SELECT 
    u.id,
    CONCAT(u.first_name, ' ', u.last_name) AS customer_name,
    COUNT(o.id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM 
    users u
JOIN 
    orders o ON u.id = o.user_id
WHERE 
    o.order_status != 'cancelled'
GROUP BY 
    u.id
HAVING 
    COUNT(o.id) > 1
ORDER BY 
    total_orders DESC, total_spent DESC;
