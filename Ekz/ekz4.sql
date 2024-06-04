SELECT "JobTitle", COUNT(*) AS "NumberOfEmployees"
FROM "HumanResources"."Employee"
WHERE "JobTitle" IS NOT NULL
GROUP BY "JobTitle";