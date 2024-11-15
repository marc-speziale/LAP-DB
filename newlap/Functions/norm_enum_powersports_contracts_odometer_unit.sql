CREATE FUNCTION newlap.norm_enum$powersports_contracts$odometer_unit 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$powersports_contracts$odometer_unit(newlap.str2enum$powersports_contracts$odometer_unit(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$powersports_contracts$odometer_unit';


GO

