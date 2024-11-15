CREATE TABLE [dbo].[Employees] (
    [column1]   SMALLINT      NOT NULL,
    [Firstname] NVARCHAR (50) NOT NULL,
    [lastname]  NVARCHAR (50) NOT NULL,
    [address1]  NVARCHAR (50) NULL,
    [column5]   NVARCHAR (50) NULL,
    [column6]   NVARCHAR (50) NULL,
    [column7]   NVARCHAR (50) NULL,
    [Province]  TINYINT       NULL,
    [country]   TINYINT       NULL,
    [column10]  NVARCHAR (50) NULL,
    [column11]  NVARCHAR (50) NULL,
    [column12]  NVARCHAR (50) NULL,
    [column13]  DATE          NULL,
    [active]    TINYINT       NULL,
    CONSTRAINT [PK_EmployeesNew] PRIMARY KEY CLUSTERED ([column1] ASC)
);


GO

