SELECT id_customer, delivery_date, order_number, purchase_price, product_sku FROM customer, order, product JOIN order ON product.id_product = order.id_order INNER JOIN subscription on customer.id_customer = subscription.id_subscription 

