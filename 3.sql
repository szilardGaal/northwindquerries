SELECT COUNT(products.supplier_id) AS NumberOfProducts, company_name AS Company FROM products
INNER JOIN suppliers
ON suppliers.supplier_id = products.supplier_id
GROUP BY suppliers.company_name
HAVING COUNT(products.supplier_id) = 5
ORDER BY numberofproducts DESC, Company ASC;

