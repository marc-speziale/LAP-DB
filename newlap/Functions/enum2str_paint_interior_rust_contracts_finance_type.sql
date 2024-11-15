CREATE FUNCTION newlap.enum2str$paint_interior_rust_contracts$finance_type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'finance'
            WHEN 2 THEN 'cash'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$paint_interior_rust_contracts$finance_type';


GO
