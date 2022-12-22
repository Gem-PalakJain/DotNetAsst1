-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserAdd]
@Password varchar(50),
@Firstname varchar(50),
@Lastname varchar(50),
@Email varchar(50),
@Gender varchar(10),
@DateOfBirth date
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	 INSERT INTO tblUser(Password,Firstname,Lastname,Email,Gender,DateOfBirth)
  VALUES(@Password,@Firstname,@Lastname,@Email,@Gender,@DateOfBirth)
END
