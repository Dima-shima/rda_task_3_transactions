-- Use our database
USE ShopDB; 


-- Start the transaction 
START TRANSACTION; 

INSERT INTO Orders (CustomerID, Date) VALUES (1, '2026-06-14');
SET @order_id = LAST_INSERT_ID();
INSERT INTO OrderItems (OrderID, ProductID, Count)
VALUES (@order_id, 1, 1);
SET @qty = 1;
UPDATE Products SET WarehouseAmount = WarehouseAmount - @qty
WHERE ID = 1; 

COMMIT; 