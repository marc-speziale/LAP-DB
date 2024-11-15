CREATE FUNCTION newlap.enum2str$motorcycle_warranty_contracts$vintage 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'New'
            WHEN 2 THEN 'Used'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_warranty_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$motorcycle_warranty_contracts$vintage';


GO
