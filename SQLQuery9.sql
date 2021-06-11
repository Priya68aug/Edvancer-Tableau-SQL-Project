Solution9.

SELECT A.profile_id,A.first_name+' '+A.last_name as 'full name', A.phone,A.[city(hometown)],B.bed_type,C.house_type,
C.furnishing_type,C.bhk_details,C.bed_count,C.beds_vacant
from dbo.Profiles A
INNER JOIN dbo.Tenancy_histories B
ON A.profile_id=B.profile_id
INNER JOIN dbo.Houses C
ON B.house_id=C.house_id
WHERE NOT A.profile_id in
(
SELECT profile_id
from dbo.Referrals
)
