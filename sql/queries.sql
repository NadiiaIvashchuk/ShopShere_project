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

--1.2. Die 10 wichtigsten Kunden nach Gesamtausgaben
SELECT	c.customer_id,
		c.region, 
		acquisition_chan AS acq_channel,
        ROUND(SUM(o.net_amount), 2) AS customer_revenue,
        COUNT(o.order_id) AS orders_cnt
FROM orders o
JOIN customers c USING(customer_id)
WHERE o.is_returned = 0
GROUP BY c.customer_id, c.region, acq_channel
ORDER BY customer_revenue DESC, orders_cnt DESC
LIMIT 10;

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
