Solution6.

CREATE VIEW [vw_tenant]
AS
SELECT A.profile_id,A.rent,A.move_in_date,B.house_type,B.beds_vacant,C.name,C.description,C.city
from dbo.Tenancy_histories A
inner join dbo.Houses B
on A.house_id = B.house_id
inner join dbo.Addresses C
on B.house_id = C.house_id
WHERE A.move_in_date >= '2015-04-30' and B.beds_vacant>0
GO

SELECT * from vw_tenant
