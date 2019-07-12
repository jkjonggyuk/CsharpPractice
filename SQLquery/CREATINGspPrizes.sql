-- =============================================
-- Author: JK Kim
-- Create date: 2019/06/13
-- Description:	This SP will add a column for prizes obj according to the inputs received in c# file and returns id number
-- =============================================
CREATE PROCEDURE dbo.spPrizes_Insert
	-- Add the parameters for the stored procedure here
	@PlaceNumber int,
	@PlaceName nvarchar(50),
	@PrizeAmount money,
	@PrizePercentage float,
	@id int = 0 output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	insert into dbo.Prizes(PlaceNumber, PlaceName, PrizeAmount, PrizePercentage)
	values(@PlaceNumber, @PlaceName, @PrizeAmount, @PrizePercentage);

    -- Insert statements for procedure here
	SELECT @id = SCOPE_IDENTITY();
END
GO
