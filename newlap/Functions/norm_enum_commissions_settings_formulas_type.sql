CREATE FUNCTION newlap.norm_enum$commissions_settings_formulas$type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$commissions_settings_formulas$type(newlap.str2enum$commissions_settings_formulas$type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.commissions_settings_formulas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$commissions_settings_formulas$type';


GO

