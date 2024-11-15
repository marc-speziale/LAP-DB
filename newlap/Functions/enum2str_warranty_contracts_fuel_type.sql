CREATE FUNCTION newlap.enum2str$warranty_contracts$fuel_type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Gas'
            WHEN 2 THEN 'Diesel'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_contracts$fuel_type';


GO
