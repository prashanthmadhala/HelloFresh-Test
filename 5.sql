SELECT COUNT (id_customer) FROM customer JOIN order ON subscription.id_subscription = order.id_order INNER JOIN customer on subscription.id_subscription = customer.id_customer WHERE order.fk_product > 1; 

