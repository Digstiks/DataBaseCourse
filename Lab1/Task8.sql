select "ProductID",
"Name",coalesce ("Color","Style",'UNKNOWN') as Meauserment
from "Production"."Product" p 
;