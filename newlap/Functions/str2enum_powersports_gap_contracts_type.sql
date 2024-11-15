CREATE FUNCTION newlap.str2enum$powersports_gap_contracts$type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'motorcycle' THEN 1
            WHEN 'atv' THEN 2
            WHEN 'personal_watercraft' THEN 3
            WHEN 'snowmobile' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$powersports_gap_contracts$type';


GO

