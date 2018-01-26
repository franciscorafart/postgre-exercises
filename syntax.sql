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
