Solution7.

SELECT profile_id,valid_till,(dateadd(day, 30, valid_till)) AS Extended_valid_till
from dbo.Referrals
where profile_id = (SELECT profile_id
from dbo.Referrals
GROUP BY profile_id
HAVING count(profile_id)>2)
