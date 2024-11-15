CREATE FUNCTION newlap.enum2str$motorcycle_warranty_contracts$status 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'active'
            WHEN 2 THEN 'cancelled'
            WHEN 3 THEN 'pending'
            WHEN 4 THEN 'void'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_warranty_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$motorcycle_warranty_contracts$status';


GO

