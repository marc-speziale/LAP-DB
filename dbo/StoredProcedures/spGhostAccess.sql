-- =============================================
-- Author:      <Jerry Sweet>
-- Create Date: <April 19, 2024, , >
-- Description: <Ghost Access, , >
-- =============================================
CREATE PROCEDURE [dbo].[spGhostAccess]

    -- Add the parameters for the stored procedure here
	


AS
BEGIN

CREATE TABLE #TempAccountInfo (
        AccountID INT,
        AccountName NVARCHAR(100),
        Dealer NVARCHAR(100),
        DealerID INT,
        AccountTypeID INT
    );
INSERT INTO #TempAccountInfo (AccountID, AccountName, Dealer, DealerID, AccountTypeID)
    SELECT
        A.fldAccountID,
        D.fldDealerName + ' - ' + A.fldAccountFName + ' ' + A.fldAccountLName   AS AccountName,
        D.fldDealerName AS Dealer,
        D.fldDealerID AS DealerID,
        A.fldAccountAccountTypeID
    FROM tblAccount A
    INNER JOIN tblDealer D ON D.fldDealerID = A.fldAccountDealerID
    WHERE A.fldAccountAccountStatusID = 1 AND A.fldAccountDealerID > 0
    ORDER BY Dealer, A.fldAccountLName;

	SELECT * FROM #TempAccountInfo order by Dealer, AccountName;

	DROP TABLE #TempAccountInfo;


END

GO

