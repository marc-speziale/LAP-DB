CREATE FUNCTION newlap.norm_enum$theft_roadside_contracts$transmission 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$theft_roadside_contracts$transmission(newlap.str2enum$theft_roadside_contracts$transmission(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.theft_roadside_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$theft_roadside_contracts$transmission';


GO

