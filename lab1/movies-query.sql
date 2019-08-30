-- EJ 11 


-- SELECT column-names
--   FROM table-name1 JOIN table-name2
--     ON column-name1 = column-name2
--  WHERE condition


-- SELECT O.OrderNumber, CONVERT(date,O.OrderDate) AS Date, 
--        P.ProductName, I.Quantity, I.UnitPrice 
--   FROM [Order] O 
--   JOIN OrderItem I ON O.Id = I.OrderId 
--   JOIN Product P ON P.Id = I.ProductId
-- ORDER BY O.OrderNumber

-- EJ 12
SELECT actor_name FROM actor_rol JOIN actors
WHERE actor_rol.rol_name = '' AND actors.AID = actor_rol.AID
