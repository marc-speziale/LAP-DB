CREATE FUNCTION newlap.str2enum$warranty_products_cgwbc$term_months 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '3' THEN 1
            WHEN '6' THEN 2
            WHEN '12' THEN 3
            WHEN '24' THEN 4
            WHEN '36' THEN 5
            WHEN '48' THEN 6
            WHEN '60' THEN 7
            WHEN '72' THEN 8
            WHEN '84' THEN 9
            WHEN '120' THEN 10
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_cgwbc$term_months';


GO

