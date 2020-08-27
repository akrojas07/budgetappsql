USE [Budgeting]
GO
/****** Object:  StoredProcedure [dbo].[AddNewExpenseType]    Script Date: 8/27/2020 2:46:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/27/20
-- Description:	Procedure to add new expense type
-- =============================================
ALTER PROCEDURE [dbo].[AddNewExpenseType] 
	-- Add the parameters for the stored procedure here
	@ExpenseType varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Into dbo.expenseType 
	Values
	(
		@ExpenseType
	)
	;
END
