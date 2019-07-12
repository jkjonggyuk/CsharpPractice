

create database Tournaments;

select *
from TestPerson

select FirstName as 'First Name', LastName as 'Surname'
from TestPerson

select top 1000 * from TestPerson
where LastName like 'Ki%'			-- if NO %, will not find... since it will look for ones with exactly Ki
									-- lower/upper case does not matter, CASE insensitive

where LastName = 'Kim'

order by FirstName
