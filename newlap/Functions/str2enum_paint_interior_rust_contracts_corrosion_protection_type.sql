CREATE FUNCTION newlap.str2enum$paint_interior_rust_contracts$corrosion_protection_type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'ssr' THEN 1
            WHEN 'emr15m' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$paint_interior_rust_contracts$corrosion_protection_type';


GO

