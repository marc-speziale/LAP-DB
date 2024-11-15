CREATE PROCEDURE [dbo].[procActivityEntry]

@parActivityStart datetime,
@parActivity varchar(50),
@parActivityEnd datetime,
@parActivityAccountID integer,
@parActivityIP varchar(50)

AS 
BEGIN
SET NOCOUNT ON;

INSERT INTO tblActivity (fldActivity, fldActivityStart, fldActivityEnd, fldActivityAccountID, fldActivityIP)
VALUES (@parActivity, @parActivityStart, @parActivityEnd, @parActivityAccountID, @parActivityIP)

SET NOCOUNT OFF;

END

GO

