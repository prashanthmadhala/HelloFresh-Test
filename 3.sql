SELECT * FROM customer JOIN subscription ON customer.id_customer = subscription.id_subscription
INNER JOIN subscription ON order.id_order = subscription.id_subscription WHERE subscription.status = 'paused' AND order.fk_product = 1; 

