CREATE FUNCTION newlap.str2enum$rv_trailer_gap_contracts$type_finance_contract 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'lease' THEN 1
            WHEN 'finance' THEN 2
            WHEN 'balloon' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$rv_trailer_gap_contracts$type_finance_contract';


GO

