-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to insert / update / delete savings rows based on inputs
-- =============================================
CREATE PROCEDURE dbo.UpsertSavings 
	-- Add the parameters for the stored procedure here
(
	@Savings dbo.BudgetInputsTableType readonly
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	merge dbo.budgetSavings as [target]
	using @Savings as src 
	on target.UserId = src.UserId
	and target.Id = src.BudgetTypeId

	--When records are matched, update the records if there is any change
    when matched then
    update
        set [target].SavingsAmount = src.Amount,
            [target].SavingsType = src.[Type]

	--When no records are matched, insert the incoming records from source table to target table
	when not matched by target then
		insert
		(
			UserId,
			SavingsType,
			SavingsAmount,
			CreatedDate,
			UpdatedDate
		)
		values
		(
			src.UserId,
			src.[Type],
			src.Amount,
			sysdatetime(),
			sysdatetime()
		)

	--When there is a row that exists in target and same record does not exist in source then delete this record target
	when not matched by source then
		delete;
END
GO
