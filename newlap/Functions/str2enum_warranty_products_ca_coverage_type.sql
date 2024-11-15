CREATE FUNCTION newlap.str2enum$warranty_products_ca$coverage_type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Complete Mechanical' THEN 1
            WHEN 'Non-Powertrain' THEN 2
            WHEN 'Powertrain Only' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ca$coverage_type';


GO

