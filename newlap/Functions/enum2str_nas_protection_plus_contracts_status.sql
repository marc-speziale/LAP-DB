CREATE FUNCTION newlap.enum2str$nas_protection_plus_contracts$status 
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

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$nas_protection_plus_contracts$status';


GO

