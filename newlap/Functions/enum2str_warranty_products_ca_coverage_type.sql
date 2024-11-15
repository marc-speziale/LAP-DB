CREATE FUNCTION newlap.enum2str$warranty_products_ca$coverage_type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Complete Mechanical'
            WHEN 2 THEN 'Non-Powertrain'
            WHEN 3 THEN 'Powertrain Only'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_ca$coverage_type';


GO

