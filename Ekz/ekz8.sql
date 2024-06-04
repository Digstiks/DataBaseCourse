SELECT p1."Name", p1."ListPrice", p1."Weight"
FROM "Production"."Product" p1
WHERE p1."ListPrice" = (
    SELECT MIN(p2."ListPrice")
    FROM "Production"."Product" p2
    WHERE p2."Weight" = p1."Weight" AND p2."ListPrice" > 0
);