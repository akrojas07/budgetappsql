-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/26/20
-- Description:	Procedure to add new goal
-- =============================================
CREATE PROCEDURE dbo.AddNewGoal 
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@GoalType varchar(255),
	@Custom bit,
	@CustomDescription varchar(255),
	@GoalName varchar(255),
	@GoalAmount decimal,
	@CurrentAmount decimal,
	@PercentComplete decimal,
	@GoalStatus varchar(255),
	@Created datetime,
	@Updated datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @GoalTypeId bigint = (select Id FROM dbo.goalType  gt WHERE @GoalType = gt.GoalType);
	
	Insert into dbo.goals
	(
		UserId,
		GoalTypeId,
		"Custom",
		CustomDescription,
		GoalName,
		GoalAmount,
		CurrentAmount,
		PercentComplete,
		GoalStatus,
		Created,
		Updated
	)
	Values
	(
		@UserId,
		@GoalTypeId,
		@Custom,
		@CustomDescription,
		@GoalName,
		@GoalAmount,
		@CurrentAmount,
		@PercentComplete,
		@GoalStatus,
		@Created,
		@Updated

	);
END
GO
