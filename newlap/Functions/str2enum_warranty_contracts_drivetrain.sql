CREATE FUNCTION newlap.str2enum$warranty_contracts$drivetrain 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '2WD' THEN 1
            WHEN '4WD/AWD' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_contracts$drivetrain';


GO

