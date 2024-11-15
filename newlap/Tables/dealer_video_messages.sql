CREATE TABLE [newlap].[dealer_video_messages] (
    [id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [youtube_url] NVARCHAR (191) NOT NULL,
    [start_date]  DATE           NOT NULL,
    [end_date]    DATE           NOT NULL,
    [autoplay]    SMALLINT       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dealer_video_messages_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealer_video_messages', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'TABLE', @level1name = N'dealer_video_messages';


GO

