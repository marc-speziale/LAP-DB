CREATE FUNCTION newlap.enum2str$powersports_gap_contracts$type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'motorcycle'
            WHEN 2 THEN 'atv'
            WHEN 3 THEN 'personal_watercraft'
            WHEN 4 THEN 'snowmobile'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$powersports_gap_contracts$type';


GO

