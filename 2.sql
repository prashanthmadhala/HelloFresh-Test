SELECT * FROM customer JOIN subscription ON product_family.id_product_family = subscription.id_subscription INNER JOIN subscription ON customer.id_customer = subscription.id_subscription WHERE product_family.product_family_handle = 'classic-box' AND subscription.status = 'active';