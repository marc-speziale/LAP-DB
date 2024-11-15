CREATE FUNCTION newlap.norm_enum$peace_of_mind_extra_contracts$finance_type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$peace_of_mind_extra_contracts$finance_type(newlap.str2enum$peace_of_mind_extra_contracts$finance_type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.peace_of_mind_extra_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$peace_of_mind_extra_contracts$finance_type';


GO

