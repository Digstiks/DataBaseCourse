--Получите   список   всех  PurchaseOrderDetailID,   у   которых
--UnitPrice выше UnitPrice c PurchaseOrderID = 73
SELECT 
    pod."PurchaseOrderDetailID"
FROM 
    "Purchasing"."PurchaseOrderDetail" pod
WHERE 
    pod."UnitPrice" > 
    (
        SELECT 
            "UnitPrice"
        FROM 
            "Purchasing"."PurchaseOrderDetail"
        WHERE 
            "PurchaseOrderID" = 73
    );