CREATE FUNCTION newlap.enum2str$commissions_settings_formulas$type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'dollar'
            WHEN 2 THEN 'percentage'
            WHEN 3 THEN 'calculation'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.commissions_settings_formulas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$commissions_settings_formulas$type';


GO

