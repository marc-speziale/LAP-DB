CREATE FUNCTION newlap.norm_enum$gap_contracts$payment_frequency 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$gap_contracts$payment_frequency(newlap.str2enum$gap_contracts$payment_frequency(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$gap_contracts$payment_frequency';


GO

