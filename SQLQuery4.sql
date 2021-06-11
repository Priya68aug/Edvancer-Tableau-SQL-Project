Solution4.

SELECT C.profile_id,first_name+' '+last_name as fullname, email, phone,referral_code,TotalBonus
from dbo.Profiles
inner join (
SELECT
profile_id
, COUNT(profile_id) AS ReferalCount
FROM dbo.Referrals
GROUP BY profile_id)C
INNER JOIN(
select profile_id, SUM(referrer_bonus_amount) as TotalBonus
from dbo.Referrals
where referral_valid=1
GROUP BY profile_id
)D
ON C.profile_id = D.profile_id
on dbo.Profiles.profile_id = C.profile_id
where C.ReferalCount > 1
