-- Select all elements from table called cd.facilities
Select * from cd.facilities;

-- Select elements from table cd.facilities whose values in the membercost column are less than 10
Select * from cd.facilities where membercost<10;

--select only name and membercost columns from cd.facilities table
select name,membercost from cd.facilities;

--select elements from cd.facilities table that, in their monthlymaintenance column have values >=80
select * from cd.facilities where monthlymaintenance>=80;

-- retrieve specific columns from cd.faicilities table where there is a member cost and this cost is
-- less than 1/50 of the monthly maintenance fee.
select facid,name, membercost, monthlymaintenance from cd.facilities
  where(membercost>0)AND(membercost<(monthlymaintenance/50));

--Retrieve a list of al the element in the cd.facilities table that have "Tennis" string in their name column
select * from cd.facilities where (position('Tennis' in name)>0);
--or (with like)
select * from cd. facilities where name like '%Tennis%' --like operator provides simple string pattert matching

--select elements that are a second room for list. In this case that in their name have the number 2
--the in operator takes a list of possible values that are compared to the values of the colum we want to quert
--> Power of relational databases
select * from cd.facilities where facid in(1,5);
--or
select * from cd.facilities where name like '%2%';

--subquery from the information in one column filtered from the information in another table
--Here we select the rows in cd.facilities where the facid is included in the cd.bookings table-->Filter
select * from cd.facilities where facid in(
  	select facid from cd.bookings
  );

--List of facilities with new column cost that says its 'cheap' if the cost is <= 100 and expensive if not
--case acts as an if-else or switch statement from other languages.
-- The as labels the column with 'cost' on the table.
select name,
	case when (monthlymaintenance > 100) then
		'expensive'
	else
		'cheap'
	end as cost
	from cd.facilities;

  --Comparing the timestamps to filter data on a table. Timestamps compare as regular values.
  select memid,surname,firstname,joindate from cd.members where joindate>='2012-09-01';
