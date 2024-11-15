CREATE FUNCTION newlap.str2enum$motorcycle_warranty_products$type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Principal' THEN 1
            WHEN 'Plus' THEN 2
            WHEN 'Platinum' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_warranty_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$motorcycle_warranty_products$type';


GO

