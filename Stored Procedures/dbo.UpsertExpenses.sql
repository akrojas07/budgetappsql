-- =============================================
-- Author:		Jason Ruan
-- Create date: 11/2/20
-- Description:	Procedure to update / insert / delete expense row based on input 
-- =============================================
CREATE PROCEDURE [dbo].[UpsertExpenses]
(
	@Expenses [dbo].[BudgetInputsTableType] Readonly
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	merge dbo.budgetExpenses as [target]
	using @Expenses as src
		on [target].UserId = src.UserId
			and [target].Id = src.BudgetTypeId	
	--When records are matched, update the records if there is any change
	when matched then
		update
			set [target].ExpenseAmount = src.Amount,
				[target].ExpenseType = src.[Type]
	--When no records are matched, insert the incoming records from source table to target table
	when not matched by target then
		insert
		(
			UserId,
			ExpenseType,
			ExpenseAmount,
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
