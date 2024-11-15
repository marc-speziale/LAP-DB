CREATE FUNCTION newlap.enum2str$powersports_contracts$odometer_unit 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'km'
            WHEN 2 THEN 'mi'
            WHEN 3 THEN 'hrs'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$powersports_contracts$odometer_unit';


GO

