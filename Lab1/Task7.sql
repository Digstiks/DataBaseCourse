--Показать поля BusinessEntityID, AccountNumber, Name, PurchasingWebServiceURL из таблицы Purchasing.Vendor.
--Неизвестные адреса сайтов магазинов (PurchasingWebServiceURL)
--заменить значением 'not available'. Названия полей оставить без изменений.

select "BusinessEntityID",
"AccountNumber",
"Name",
coalesce ("PurchasingWebServiceURL",'not available')"PurchasingWebServiceURL" 
from "Purchasing"."Vendor" v ;
