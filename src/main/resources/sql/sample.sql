--#getTestQuery
INSERT INTO clients
(client_id, client_name, client_type)
  SELECT supplier_id, supplier_name, 'advertising'
  FROM suppliers
  WHERE NOT EXISTS (SELECT *
                    FROM clients
                    WHERE clients.client_id = suppliers.supplier_id);
--#getTestQuery2
INSERT INTO clients
(client_id, client_name, client_type)
  SELECT supplier_id, supplier_name, 'advertising'
  FROM suppliers
  WHERE NOT EXISTS (SELECT *
                    FROM clients
                    WHERE clients.client_id = suppliers.supplier_id);