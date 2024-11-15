CREATE FUNCTION newlap.str2enum$motorcycle_products$distance 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '20,000 km' THEN 1
            WHEN '40,000 km' THEN 2
            WHEN '60,000 km' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$motorcycle_products$distance';


GO

