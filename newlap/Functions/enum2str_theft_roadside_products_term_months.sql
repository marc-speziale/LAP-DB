CREATE FUNCTION newlap.enum2str$theft_roadside_products$term_months 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '12'
            WHEN 2 THEN '24'
            WHEN 3 THEN '36'
            WHEN 4 THEN '48'
            WHEN 5 THEN '60'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.theft_roadside_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$theft_roadside_products$term_months';


GO

