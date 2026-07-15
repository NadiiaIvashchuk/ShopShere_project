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
        SUM(o.net_amount) AS total_spent,
        COUNT(o.order_id) AS orders_cnt
FROM orders o
JOIN customers c USING(customer_id)
WHERE o.is_returned = 0
GROUP BY c.customer_id, c.region, acq_channel
ORDER BY total_spent DESC, orders_cnt DESC
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
