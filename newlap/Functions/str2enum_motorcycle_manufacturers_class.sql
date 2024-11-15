CREATE FUNCTION newlap.str2enum$motorcycle_manufacturers$class 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '1' THEN 1
            WHEN '2' THEN 2
            WHEN '3' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$motorcycle_manufacturers$class';


GO

