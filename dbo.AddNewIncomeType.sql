USE [Budgeting]
GO
/****** Object:  StoredProcedure [dbo].[AddNewIncomeType]    Script Date: 8/27/2020 2:47:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/27/20
-- Description:	Procedure to add new income type
-- =============================================
ALTER PROCEDURE [dbo].[AddNewIncomeType] 
	-- Add the parameters for the stored procedure here
	@IncomeType varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Into dbo.incomeType 
	Values
	(
		@IncomeType
	)
	;
END
