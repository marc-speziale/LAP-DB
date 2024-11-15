CREATE PROCEDURE procAddNotes

@parNotes text,
@parNotesDate datetime,
@parNotesType integer,
@parNotesEnteredBy integer,
@parNotesClaimID integer =0 ,
@parNotesEmpID integer =0,
@parNotesContractID integer =0 ,
@parNotesUnderwriterID integer =0 ,
@parNotesDealerID integer =0 ,
@parNotesRebateID integer =0 ,
@parNotesTransactionID integer =0 ,
@parNotesCommissionID integer =0 ,
@parNotesRepairCentreID integer =0 ,
@parNotesAccountID integer =0 ,
@parNotesDocumentID integer =0 

AS 
BEGIN
SET NOCOUNT ON;

SET @parNotesClaimID =ISNULL(@parNotesClaimID,0);
SET @parNotesEmpID =ISNULL(@parNotesEmpID,0);
SET @parNotesContractID =ISNULL(@parNotesContractID,0);
SET @parNotesUnderwriterID =ISNULL(@parNotesUnderwriterID,0);
SET @parNotesDealerID =ISNULL(@parNotesDealerID,0);
SET @parNotesRebateID =ISNULL(@parNotesRebateID,0);
SET @parNotesTransactionID =ISNULL(@parNotesTransactionID,0);
SET @parNotesCommissionID =ISNULL(@parNotesCommissionID,0);
SET @parNotesRepairCentreID =ISNULL(@parNotesRepairCentreID,0);
SET @parNotesAccountID =ISNULL(@parNotesAccountID,0);
SET @parNotesDocumentID =ISNULL(@parNotesDocumentID,0)


INSERT INTO tblNotes 
(fldNotes, fldNotesDate, fldNotesType, fldNotesEnteredBy, fldNotesClaimID, fldNotesEmpID, fldNotesContractID, fldNotesUnderwriterID, fldNotesDealerID, fldNotesRebateID, fldNotesTransactionID, fldNotesCommissionID, fldNotesRepairCentreID, fldNotesAccountID, fldNotesDocumentID)
VALUES 
(@parNotes, @parNotesDate, @parNotesType, @parNotesEnteredBy, @parNotesClaimID, @parNotesEmpID, @parNotesContractID, @parNotesUnderwriterID, @parNotesDealerID, @parNotesRebateID, @parNotesTransactionID, @parNotesCommissionID, @parNotesRepairCentreID, @parNotesAccountID, @parNotesDocumentID)

SET NOCOUNT OFF;

END

GO

