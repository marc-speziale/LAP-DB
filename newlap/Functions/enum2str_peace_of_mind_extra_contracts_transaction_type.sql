CREATE FUNCTION newlap.enum2str$peace_of_mind_extra_contracts$transaction_type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Purchase'
            WHEN 2 THEN 'Lease'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$peace_of_mind_extra_contracts$transaction_type';


GO

