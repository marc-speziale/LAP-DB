CREATE FUNCTION newlap.str2enum$gap_contracts$payment_frequency 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'weekly' THEN 1
            WHEN 'bi-weekly' THEN 2
            WHEN 'monthly' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$gap_contracts$payment_frequency';


GO

