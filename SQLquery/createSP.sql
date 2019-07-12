
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.spTestPerson_GetByLastName					-- dbo == database owner   -- dbo.sp... => don't put underscore (dbo.sp_...) it will think it's from MicroSoft
	@LastName nvarchar(100)			-- if not sure, cannot recall, right click on dbo and click design
	-- , @FirstName = ....  -- can do this
AS
BEGIN
	SET NOCOUNT ON;

	select *
	from dbo.TestPerson		-- can get rid of dbo.
	where LastName = @LastName;

END
GO
