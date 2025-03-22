SELECT 
    m.name AS medicine_name,
    r.name AS region_name,
    SUM(i.quantity) AS total_inventory,
    COALESCE(SUM(od.quantity), 0) AS total_sold,
    CASE 
        WHEN SUM(i.quantity) = 0 THEN 0
        ELSE COALESCE(SUM(od.quantity), 0) / SUM(i.quantity)
    END AS turnover_rate
FROM 
    medicines m
JOIN 
    inventory i ON m.id = i.medicine_id
JOIN 
    regions r ON i.region_id = r.id
LEFT JOIN 
    order_details od ON m.id = od.medicine_id
LEFT JOIN 
    orders o ON od.order_id = o.id AND o.region_id = r.id
GROUP BY 
    m.id, r.id
ORDER BY 
    turnover_rate DESC;
