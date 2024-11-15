CREATE FUNCTION newlap.norm_enum$rv_trailer_gap_contracts$finance_amount 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$rv_trailer_gap_contracts$finance_amount(newlap.str2enum$rv_trailer_gap_contracts$finance_amount(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$rv_trailer_gap_contracts$finance_amount';


GO

