USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[AddNewExpense]    Script Date: 10/12/2020 2:27:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to add new expense
-- =============================================
CREATE PROCEDURE [dbo].[AddNewExpense]
(
	@Expenses [dbo].[BudgetInputsTableType] Readonly
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.budgetExpenses
	(
		UserId,
		ExpenseType,		
		ExpenseAmount,
		CreatedDate,
		UpdatedDate
	)
	select
		UserId,
		[Type] as ExpenseType,
		Amount as ExpenseAmount,
		SYSDATETIME(),
		SYSDATETIME()
	from @Expenses; 
END
