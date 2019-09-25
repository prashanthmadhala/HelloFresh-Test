SELECT * FROM customer, order JOIN subscription ON order.id_order = subscription.id_subscription INNER JOIN subscription ON customer.id_customer = subscription.id_subscription WHERE order.delivery_date BETWEEN '2019-09-11 00:00:00' AND '2019-09-12 00:00:00' 
UNION 
SELECT COUNT (fk.product) FROM order JOIN subscription ON order.id_order = subscription.id_subscription INNER JOIN subscription ON customer.id_customer = subscription.id_subscription WHERE order.delivery_date < '2019-09-11 00:00:00'
