CREATE FUNCTION newlap.str2enum$roadside_assistance_and_towing_contracts$vintage 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'New' THEN 1
            WHEN 'Used' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.roadside_assistance_and_towing_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$roadside_assistance_and_towing_contracts$vintage';


GO
