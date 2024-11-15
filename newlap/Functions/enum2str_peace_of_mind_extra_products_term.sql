CREATE FUNCTION newlap.enum2str$peace_of_mind_extra_products$term 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '12 months'
            WHEN 2 THEN '24 months'
            WHEN 3 THEN '36 months'
            WHEN 4 THEN '48 months'
            WHEN 5 THEN '60 months'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$peace_of_mind_extra_products$term';


GO

