CREATE FUNCTION newlap.enum2str$nas_peace_of_mind_products$ec_classification 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Standard'
            WHEN 2 THEN 'Highline'
            WHEN 3 THEN 'Super Highline'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_peace_of_mind_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$nas_peace_of_mind_products$ec_classification';


GO

