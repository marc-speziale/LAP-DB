CREATE FUNCTION newlap.str2enum$peace_of_mind_extra_products$type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Standard' THEN 1
            WHEN 'Highline' THEN 2
            WHEN 'Super Highline' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$peace_of_mind_extra_products$type';


GO

