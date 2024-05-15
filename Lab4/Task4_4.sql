--Вывести название должности сотрудника, а также название должности
--сотрудника,   имеющего   большее   количество   отпускных   часов.
--Учитывать только действующих сотрудников. ("HumanResources"."Employee").

SELECT 
    emp1."JobTitle" AS "CurrentEmployeeJobTitle",
    (SELECT 
        emp2."JobTitle"
    FROM 
        "HumanResources"."Employee" emp2
    WHERE 
        emp2."VacationHours" > emp1."VacationHours" AND emp2."CurrentFlag" = 1
    LIMIT 1
    ) AS "EmployeeWithMoreVacationHoursJobTitle"
FROM 
    "HumanResources"."Employee" emp1
WHERE 
    emp1."CurrentFlag" = 1;