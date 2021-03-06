USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[RemoveBudgetBreakdownByUser]    Script Date: 10/23/2020 10:53:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/23/20
-- Description:	Procedure to remove existing budget breakdown by user
-- =============================================
ALTER PROCEDURE [dbo].[RemoveBudgetBreakdownByUser]
@UserId bigint 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from dbo.budgetBreakdown
	where UserId = @UserId; 
END
