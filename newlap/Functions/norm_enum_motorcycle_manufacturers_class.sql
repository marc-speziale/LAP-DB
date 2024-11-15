CREATE FUNCTION newlap.norm_enum$motorcycle_manufacturers$class 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$motorcycle_manufacturers$class(newlap.str2enum$motorcycle_manufacturers$class(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_manufacturers', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$motorcycle_manufacturers$class';


GO

