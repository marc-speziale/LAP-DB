CREATE FUNCTION newlap.enum2str$tire_and_wheel_contracts$term 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '2 years'
            WHEN 2 THEN '3 years'
            WHEN 3 THEN '4 years'
            WHEN 4 THEN '5 years'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_and_wheel_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$tire_and_wheel_contracts$term';


GO

