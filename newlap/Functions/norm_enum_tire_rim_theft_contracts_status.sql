CREATE FUNCTION newlap.norm_enum$tire_rim_theft_contracts$status 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$tire_rim_theft_contracts$status(newlap.str2enum$tire_rim_theft_contracts$status(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_rim_theft_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$tire_rim_theft_contracts$status';


GO

