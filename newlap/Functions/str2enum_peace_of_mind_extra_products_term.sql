CREATE FUNCTION newlap.str2enum$peace_of_mind_extra_products$term 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '12 months' THEN 1
            WHEN '24 months' THEN 2
            WHEN '36 months' THEN 3
            WHEN '48 months' THEN 4
            WHEN '60 months' THEN 5
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$peace_of_mind_extra_products$term';


GO

