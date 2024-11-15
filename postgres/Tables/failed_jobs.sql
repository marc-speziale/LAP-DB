CREATE TABLE [postgres].[failed_jobs] (
    [id]         INT           NOT NULL,
    [uuid]       VARCHAR (255) NULL,
    [connection] TEXT          NOT NULL,
    [queue]      TEXT          NOT NULL,
    [payload]    TEXT          NOT NULL,
    [exception]  TEXT          NOT NULL,
    [failed_at]  DATETIME      NOT NULL
);


GO

