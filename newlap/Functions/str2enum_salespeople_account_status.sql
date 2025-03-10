CREATE FUNCTION newlap.str2enum$salespeople$account_status 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Active' THEN 1
            WHEN 'Inactive' THEN 2
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.salespeople', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$salespeople$account_status';


GO

