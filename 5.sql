SELECT s.company_name, p.product_name, p.unit_price
FROM products AS p
JOIN suppliers AS s ON p.supplier_id = s.supplier_id
LEFT JOIN products AS pp ON p.supplier_id = pp.supplier_id AND p.unit_price < pp.unit_price
WHERE pp.product_id IS NULL
ORDER BY p.unit_price DESC, product_name ASC, company_name ASC;
