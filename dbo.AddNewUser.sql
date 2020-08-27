-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/26/20
-- Description:	Procedure to create a new user
-- =============================================
CREATE PROCEDURE dbo.AddNewUser 
	-- Add the parameters for the stored procedure here
	@Email varchar(255), 
	@FirstName varchar(255),
	@LastName varchar(255),
	@Password varchar(255),
	@Status bit,
	@Created datetime,
	@Updated datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.userAccount
	(
		Email,
		FirstName,
		LastName,
		"Password",
		"Status",
		"Created",
		"Updated"
	)
	Values
	(	
		@Email,
		@FirstName,
		@LastName,
		@Password,
		@Status,
		@Created,
		@Updated
	
	);
END
GO
