CREATE FUNCTION newlap.str2enum$rv_trailer_products$term_months 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '12' THEN 1
            WHEN '24' THEN 2
            WHEN '36' THEN 3
            WHEN '48' THEN 4
            WHEN '60' THEN 5
            WHEN '72' THEN 6
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$rv_trailer_products$term_months';


GO

