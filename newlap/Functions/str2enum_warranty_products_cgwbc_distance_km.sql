CREATE FUNCTION newlap.str2enum$warranty_products_cgwbc$distance_km 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '4000' THEN 1
            WHEN '8000' THEN 2
            WHEN '40000' THEN 3
            WHEN '60000' THEN 4
            WHEN '80000' THEN 5
            WHEN '100000' THEN 6
            WHEN '110000' THEN 7
            WHEN '140000' THEN 8
            WHEN '160000' THEN 9
            WHEN '180000' THEN 10
            WHEN '200000' THEN 11
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_cgwbc$distance_km';


GO

