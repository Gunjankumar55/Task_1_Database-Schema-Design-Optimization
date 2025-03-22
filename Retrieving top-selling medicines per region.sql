
SELECT 
    r.name AS region_name,
    m.name AS medicine_name,
    SUM(od.quantity) AS total_sold
FROM 
    order_details od
JOIN 
    medicines m ON od.medicine_id = m.id
JOIN 
    orders o ON od.order_id = o.id
JOIN 
    regions r ON o.region_id = r.id
WHERE 
    o.order_status != 'cancelled'
GROUP BY 
    r.id, m.id
ORDER BY 
    r.name, total_sold DESC;
