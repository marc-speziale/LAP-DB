CREATE FUNCTION newlap.enum2str$motorcycle_products$distance 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '20,000 km'
            WHEN 2 THEN '40,000 km'
            WHEN 3 THEN '60,000 km'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$motorcycle_products$distance';


GO

