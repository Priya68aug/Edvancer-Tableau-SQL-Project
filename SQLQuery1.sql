Solution1

select profile_id,first_name+' '+last_name as 'full name', phone
from dbo.Profiles
where profile_id = (select profile_id 
from dbo.Tenancy_histories
where DATEDIFF(month,[move_in_date],[move_out_date]) = (select max(DATEDIFF(month,[move_in_date],[move_out_date])) from dbo.Tenancy_histories))

