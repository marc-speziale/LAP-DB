CREATE FUNCTION newlap.norm_enum$theft_protection_contracts$odometer_unit 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$theft_protection_contracts$odometer_unit(newlap.str2enum$theft_protection_contracts$odometer_unit(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.theft_protection_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$theft_protection_contracts$odometer_unit';


GO
