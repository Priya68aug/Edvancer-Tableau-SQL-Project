Solution3

select A.profile_id,first_name+' '+last_name as 'full name', phone, email,[city(hometown)],B.house_id,B.move_in_date,
B.move_out_date,B.rent,c.ReferalCount,D.latest_employer,D.occupational_category
from dbo.Profiles A
INNER JOIN dbo.Tenancy_histories B
on A.profile_id = B.profile_id
INNER JOIN 
(
SELECT
profile_id
, COUNT(profile_id) AS ReferalCount
FROM dbo.Referrals
GROUP BY profile_id
)C
on A.profile_id = C.profile_id
INNER JOIN dbo.Employment_details D
on A.profile_id = D.profile_id
Where A.[city(hometown)] in ('Bangalore','Pune') and B.move_in_date BETWEEN '01-01-2015' and '01-01-2016'
ORDER BY B.rent DESC
