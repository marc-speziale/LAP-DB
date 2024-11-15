CREATE FUNCTION newlap.norm_enum$provinces$rv_trailer_type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$provinces$rv_trailer_type(newlap.str2enum$provinces$rv_trailer_type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.provinces', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$provinces$rv_trailer_type';


GO

