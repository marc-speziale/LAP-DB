CREATE FUNCTION newlap.enum2str$gap_contracts$payment_frequency 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'weekly'
            WHEN 2 THEN 'bi-weekly'
            WHEN 3 THEN 'monthly'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$gap_contracts$payment_frequency';


GO

