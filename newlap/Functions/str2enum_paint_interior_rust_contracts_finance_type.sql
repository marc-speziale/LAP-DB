CREATE FUNCTION newlap.str2enum$paint_interior_rust_contracts$finance_type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'finance' THEN 1
            WHEN 'cash' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$paint_interior_rust_contracts$finance_type';


GO

