-- Use our database
USE ShopDB; 

INSERT INTO Orders (CustomerID, Date) VALUES (1, '2026-06-14');
INSERT INTO OrderItems (OrderID, ProductID, Count) 
VALUES (1, 1, 1);

-- Start the transaction 
START TRANSACTION; 

UPDATE Products SET WarehouseAmount = WarehouseAmount - 1
WHERE ID = '1'; 

COMMIT; 