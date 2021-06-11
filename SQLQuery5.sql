Solution5

select isnull(B.[city(hometown)],'Grand Total') as 'City',SUM(A.rent) as 'Total Sales'
from dbo.Tenancy_histories A
inner join dbo.Profiles B
on A.profile_id = B.profile_id
group by B.[city(hometown)]
WITH ROLLUP
