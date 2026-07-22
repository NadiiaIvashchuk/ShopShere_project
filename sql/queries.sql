--Block 1
--1.1. Gesamtnettoumsatz (net_amount), Anzahl der Bestellungen und durchschnittlicher Bestellwert nach Region für jedes Jahr
SELECT	c.region,
        o.order_year,
		ROUND(SUM(net_amount), 2) AS net_revenue,
		COUNT(order_id) orders_cnt,
        ROUND(AVG(net_amount), 2) AS avg_check
FROM orders o
JOIN customers c USING(customer_id) 
WHERE o.is_returned = 0  -- exclude  returned orders 
GROUP BY c.region, o.order_year
ORDER BY c.region, o.order_year;

--1.2. Die Kunden nach Gesamtausgaben
SELECT	c.customer_id,
		c.region, 
		acquisition_chan AS acq_channel,
        ROUND(SUM(o.net_amount), 2) AS customer_revenue,
        COUNT(o.order_id) AS orders_cnt
FROM orders o
JOIN customers c USING(customer_id)
WHERE o.is_returned = 0
GROUP BY c.customer_id, c.region, acq_channel
ORDER BY customer_revenue DESC, orders_cnt DESC;

--1.3. Gesamtumsatz, durchschnittliche Marge (margin_pct) und Retourenquote für jede Produktkategorie
SELECT	p.category,
		ROUND(SUM(i.line_total), 2) AS total_revenue,  -- gross revenue, includes orders with "is_returned = 1"
        AVG(p.margin_pct) AS avg_margin_pct,
        ROUND(100.0 * COUNT(DISTINCT CASE WHEN o.is_returned = 1 THEN o.order_id END) / COUNT(DISTINCT o.order_id), 2) AS returned_pct
FROM order_items i
JOIN orders o USING(order_id)
JOIN products p USING(product_id)
GROUP BY p.category
Order BY total_revenue DESС;

--1.4. Die Liste und Anzahl der Kunden, deren Gesamtausgaben die durchschnittlichen Ausgaben über die gesamte Datenbank hinweg übersteigen. Welchen Anteil haben sie am Gesamtumsatz?
WITH customer_spent AS (
	SELECT	customer_id,
  			SUM(net_amount) AS total_spent
  	FROM orders
  	WHERE is_returned = 0
  	GROUP BY customer_id
)
SELECT	COUNT(*) AS high_spent_customer_cnt,
		ROUND(100.0 * SUM(total_spent) / (SELECT SUM(total_spent) FROM customer_spent), 2) AS revenue_share_pct
FROM customer_spent
WHERE total_spent > (SELECT AVG(total_spent) FROM customer_spent)

--1.5. Berechnen Sie für jeden Marketingkanal Folgendes: Gesamtbudget, gesamten zugeordneten Umsatz und ROI (Umsatz / Budget)
SELECT	channel,
		SUM(budget) total_channel_budget,
        SUM(attributed_reven) channel_revenue,
        ROUND(1.0 * SUM(attributed_reven) / NULLIF(SUM(budget), 0), 2) AS ROI
FROM marketing
GROUP BY channel
ORDER BY ROI DESC;

-- Kundengruppe für Pareto-Diagramm
SELECT
    'Top ' || (bucket * 5) || '%' AS customer_group,
    COUNT(*) AS customers,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(revenue) * 100.0 / MAX(total_revenue), 2) AS revenue_share,
    ROUND(
        SUM(SUM(revenue)) OVER (ORDER BY bucket)
        * 100.0 / MAX(total_revenue),
        2
    ) AS cumulative_share
FROM (
    SELECT
        customer_id,
        revenue,
        CAST(
            ((ROW_NUMBER() OVER (ORDER BY revenue DESC) - 1)
            * 20.0
            / COUNT(*) OVER ()) AS INTEGER
        ) + 1 AS bucket,
        SUM(revenue) OVER () AS total_revenue
    FROM (
        SELECT
            customer_id,
            SUM(net_amount) AS revenue
        FROM orders
        WHERE is_returned = 0
        GROUP BY customer_id
    )
) t
GROUP BY bucket
ORDER BY bucket;

-- Umsatzanalyse nach Gerätetyp
SELECT
    device,
    ROUND(SUM(net_amount),2) AS revenue,
    ROUND(AVG(net_amount),2) AS avg_order_value,
    ROUND(
        100.0 * SUM(CASE WHEN is_returned = 1 THEN 1 ELSE 0 END)
        / COUNT(*),2
    ) AS return_rate
FROM orders
GROUP BY device;

-- Umsatzanalyse nach Lieferungstype (Umsatz, Bestellungen)
SELECT
    CASE
        WHEN free_shipping = 1 THEN 'Free Shipping'
        ELSE 'Paid Shipping'
    END AS shipping,

    COUNT(*) AS orders,

    ROUND(AVG(net_amount),2) AS avg_order,

    ROUND(SUM(net_amount),2) AS revenue,

    ROUND(
        100.0*SUM(CASE WHEN is_returned=1 THEN 1 ELSE 0 END)
/COUNT(*),2) AS return_rate

FROM orders
GROUP BY shipping;

-- Umsatzanalyse nach Rabattpolitik durch Rabattgruppe (Umsatz, Bestellungen, Returnquote)
SELECT
CASE
    WHEN discount_amount = 0 THEN '0%'
    WHEN discount_amount * 100.0 / gross_amount < 5 THEN '0–5%'
    WHEN discount_amount * 100.0 / gross_amount < 15 THEN '5–15%'
    WHEN discount_amount * 100.0 / gross_amount < 25 THEN '15–25%'
    ELSE '25%+'
END AS discount_group,

COUNT(*) AS orders,

ROUND(AVG(net_amount),2) AS avg_order,

ROUND(SUM(net_amount),2) AS revenue

FROM orders

GROUP BY discount_group;

-- LTV
WITH customer_ltv AS (
    SELECT
        customer_id,
        SUM(net_amount) AS lifetime_value,
        COUNT(order_id) AS orders_cnt
    FROM orders
    WHERE is_returned = 0
    GROUP BY customer_id
)

SELECT
    c.acquisition_chan AS channel,
    COUNT(*) AS customers,
    ROUND(AVG(cl.lifetime_value),2) AS avg_ltv,
    ROUND(SUM(cl.lifetime_value),2) AS total_ltv,
    ROUND(AVG(cl.orders_cnt),2) AS avg_orders
FROM customer_ltv cl
JOIN customers c
    USING (customer_id)
GROUP BY c.acquisition_chan
ORDER BY avg_ltv DESC;

-- Analyse nach Kundenalter
SELECT
    CASE
        WHEN c.age < 25 THEN '18–24'
        WHEN c.age < 35 THEN '25–34'
        WHEN c.age < 45 THEN '35–44'
        WHEN c.age < 55 THEN '45–54'
        ELSE '55+'
    END AS age_group,

    COUNT(DISTINCT c.customer_id) AS customers,

    ROUND(SUM(o.net_amount),2) AS revenue,

    ROUND(AVG(o.net_amount),2) AS avg_order_value,

    ROUND(
        100.0 * SUM(CASE WHEN o.is_returned = 1 THEN 1 ELSE 0 END)
        / COUNT(*),2
    ) AS return_rate

FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id

GROUP BY age_group

ORDER BY
CASE
    WHEN age_group='18–24' THEN 1
    WHEN age_group='25–34' THEN 2
    WHEN age_group='35–44' THEN 3
    WHEN age_group='45–54' THEN 4
    ELSE 5
END;
