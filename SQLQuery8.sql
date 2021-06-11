Solution8.

SELECT A.profile_id,A.first_name+' '+A.last_name as 'full name', A.phone,B.rent,IIF(B.rent>10000,'Grade A',IIF(B.rent>=7500 and B.rent<=10000,'Grade B','Grade C')) AS 'Customer Segment'
FROM dbo.Profiles A
INNER JOIN dbo.Tenancy_histories B
ON A.profile_id=B.profile_id
