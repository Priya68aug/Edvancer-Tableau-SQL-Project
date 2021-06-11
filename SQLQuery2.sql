Solution2

select first_name+' '+last_name as 'full name', email, phone
from dbo.Profiles
where marital_status='Y' and profile_id in (select profile_id
from dbo.Tenancy_histories
where rent>9000)


