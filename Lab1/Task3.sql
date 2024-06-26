--Показать поля BusinessEntityID, RateChangeDate, Rate из таблицы HumanResources.EmployeePayHistory.
--Показать только те записи, для которых почасовая ставка заработной платы (Rate) больше $15 и меньше $20.
--Использовать оператор BETWEEN.
select 
"BusinessEntityID"
,"RateChangeDate"
,"Rate"
from "HumanResources"."EmployeePayHistory" eph 
where "Rate" between 15 and 20;