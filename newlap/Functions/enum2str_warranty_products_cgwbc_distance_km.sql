CREATE FUNCTION newlap.enum2str$warranty_products_cgwbc$distance_km 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '4000'
            WHEN 2 THEN '8000'
            WHEN 3 THEN '40000'
            WHEN 4 THEN '60000'
            WHEN 5 THEN '80000'
            WHEN 6 THEN '100000'
            WHEN 7 THEN '110000'
            WHEN 8 THEN '140000'
            WHEN 9 THEN '160000'
            WHEN 10 THEN '180000'
            WHEN 11 THEN '200000'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgwbc$distance_km';


GO

