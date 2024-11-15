CREATE FUNCTION newlap.enum2str$gap_products_la$finance_amount 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '0-25000'
            WHEN 2 THEN '25001-50000'
            WHEN 3 THEN '50001-75000'
            WHEN 4 THEN '75001-100000'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_products_la', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$gap_products_la$finance_amount';


GO

