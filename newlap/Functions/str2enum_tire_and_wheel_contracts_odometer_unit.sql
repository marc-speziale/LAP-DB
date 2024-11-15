CREATE FUNCTION newlap.str2enum$tire_and_wheel_contracts$odometer_unit 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'km' THEN 1
            WHEN 'mi' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_and_wheel_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$tire_and_wheel_contracts$odometer_unit';


GO
