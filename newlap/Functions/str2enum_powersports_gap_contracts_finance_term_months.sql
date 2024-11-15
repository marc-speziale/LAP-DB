CREATE FUNCTION newlap.str2enum$powersports_gap_contracts$finance_term_months 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '24' THEN 1
            WHEN '36' THEN 2
            WHEN '48' THEN 3
            WHEN '60' THEN 4
            WHEN '72' THEN 5
            WHEN '84' THEN 6
            WHEN '96' THEN 7
            WHEN '108' THEN 8
            WHEN '120' THEN 9
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.powersports_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$powersports_gap_contracts$finance_term_months';


GO

