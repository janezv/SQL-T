
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Janez Vegan
-- Create date: 2021.10.10
-- Description:	
-- =============================================
alter PROCEDURE filtering 
	-- Add the parameters for the stored procedure here
	@param1 varchar(50), 
	@param2 varchar(50) = null --default value
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    if @param2 is null
	begin
		print N'defult valu ni povožena in je null'
	end
	else 
	begin
		print N'nekaj nagaja'
	end
END
GO

exec filtering 'ahoj','nahaja'
