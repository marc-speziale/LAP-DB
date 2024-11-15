CREATE FUNCTION newlap.str2enum$rv_trailer_gap_contracts$vehicle_usage 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'personal' THEN 1
            WHEN 'commercial' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.rv_trailer_gap_contracts', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$rv_trailer_gap_contracts$vehicle_usage';


GO

