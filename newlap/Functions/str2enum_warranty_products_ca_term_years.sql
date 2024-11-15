CREATE FUNCTION newlap.str2enum$warranty_products_ca$term_years 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '3' THEN 1
            WHEN '4' THEN 2
            WHEN '5' THEN 3
            WHEN '6' THEN 4
            WHEN '7' THEN 5
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ca$term_years';


GO

