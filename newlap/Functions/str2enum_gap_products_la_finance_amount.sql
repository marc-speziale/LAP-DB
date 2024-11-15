CREATE FUNCTION newlap.str2enum$gap_products_la$finance_amount 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '0-25000' THEN 1
            WHEN '25001-50000' THEN 2
            WHEN '50001-75000' THEN 3
            WHEN '75001-100000' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_products_la', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$gap_products_la$finance_amount';


GO

