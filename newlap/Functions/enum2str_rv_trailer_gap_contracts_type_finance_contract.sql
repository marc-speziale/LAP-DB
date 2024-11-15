CREATE FUNCTION newlap.enum2str$rv_trailer_gap_contracts$type_finance_contract 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'lease'
            WHEN 2 THEN 'finance'
            WHEN 3 THEN 'balloon'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$rv_trailer_gap_contracts$type_finance_contract';


GO

