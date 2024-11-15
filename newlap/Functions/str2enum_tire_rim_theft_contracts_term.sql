CREATE FUNCTION newlap.str2enum$tire_rim_theft_contracts$term 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '2 years' THEN 1
            WHEN '3 years' THEN 2
            WHEN '4 years' THEN 3
            WHEN '5 years' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.tire_rim_theft_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$tire_rim_theft_contracts$term';


GO

