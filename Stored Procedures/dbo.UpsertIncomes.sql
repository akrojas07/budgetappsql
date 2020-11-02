-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to insert / update / delete income row based on input
-- =============================================
CREATE PROCEDURE dbo.UpsertIncomes
	-- Add the parameters for the stored procedure here
	(
		@Incomes [dbo].[BudgetInputsTableType] Readonly
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	merge dbo.budgetIncome as [target]
	using @Incomes as src
		on [target].UserId = src.UserId
			and [target].Id = src.BudgetTypeId	

	--When records are matched, update the records if there is any change
	when matched then
		update
			set [target].IncomeAmount = src.Amount,
				[target].IncomeType = src.[Type]

	--When no records are matched, insert the incoming records from source table to target table
	when not matched by target then
		insert
		(
			UserId,
			IncomeType,
			IncomeAmount,
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
