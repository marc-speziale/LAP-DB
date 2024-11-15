CREATE FUNCTION newlap.norm_enum$rust_assure_contracts$transaction_type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$rust_assure_contracts$transaction_type(newlap.str2enum$rust_assure_contracts$transaction_type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rust_assure_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$rust_assure_contracts$transaction_type';


GO

