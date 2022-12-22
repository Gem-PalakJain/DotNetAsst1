create procedure datas @FirstName varchar(100)
As
SELECT * from UserDetails where FirstName = @FirstName;