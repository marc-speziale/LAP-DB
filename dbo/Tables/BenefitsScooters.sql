CREATE TABLE [dbo].[BenefitsScooters] (
    [fldBenefitName]        NVARCHAR (MAX) NOT NULL,
    [fldBenefitActive]      TINYINT        NOT NULL,
    [fldBenefitDescription] NVARCHAR (MAX) NOT NULL,
    [fldBenefitText]        NVARCHAR (MAX) NOT NULL,
    [fldBenefitHTML]        NVARCHAR (MAX) NOT NULL,
    [fldBenefitOldID]       INT            NULL,
    [fldBenefitOrder]       TINYINT        NOT NULL,
    [fldBenefitProductID]   TINYINT        NOT NULL
);


GO

