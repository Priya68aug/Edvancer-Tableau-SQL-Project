Solution10.

select top (1) with ties A.house_id, A.name,A.description, 
B.house_type, B.furnishing_type, (B.bed_count - B.Beds_vacant) AS Total_Occupacy
from dbo.Addresses A
INNER JOIN DBO.Houses B ON 
A.house_id= B.house_id 
ORDER BY Total_Occupacy DESC
