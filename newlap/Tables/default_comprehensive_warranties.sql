CREATE TABLE [newlap].[default_comprehensive_warranties] (
    [id]              BIGINT IDENTITY (357, 1) NOT NULL,
    [manufacturer_id] BIGINT NOT NULL,
    [year]            INT    NOT NULL,
    [months]          INT    NOT NULL,
    [mileage]         INT    DEFAULT (NULL) NULL,
    CONSTRAINT [PK_default_comprehensive_warranties_id] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [default_comprehensive_warranties$default_comprehensive_warranties_manufacturer_id_foreign] FOREIGN KEY ([manufacturer_id]) REFERENCES [newlap].[manufacturers] ([id])
);


GO

CREATE NONCLUSTERED INDEX [default_comprehensive_warranties_manufacturer_id_foreign]
    ON [newlap].[default_comprehensive_warranties]([manufacturer_id] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.default_comprehensive_warranties', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'default_comprehensive_warranties';


GO

