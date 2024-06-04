SELECT p."Name", p."ProductNumber", sci."ShoppingCartID", sci."Quantity"
FROM "Production"."Product" p
NATURAL JOIN "Sales"."ShoppingCartItem" sci;