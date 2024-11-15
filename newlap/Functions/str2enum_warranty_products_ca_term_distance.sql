CREATE FUNCTION newlap.str2enum$warranty_products_ca$term_distance 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '80000' THEN 1
            WHEN '100000' THEN 2
            WHEN '115000' THEN 3
            WHEN '120000' THEN 4
            WHEN '160000' THEN 5
            WHEN '200000' THEN 6
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ca$term_distance';


GO

