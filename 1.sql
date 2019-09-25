SELECT product_sku FROM product JOIN subscription ON product.id_product = subscription.id_subscription 
INNER JOIN customer ON subscription.id_subscription = customer.id_customer WHERE customer.email = 'fancygirl83@hotmail.com' AND subscription.status = 'active'; 

