.class public interface abstract Lcom/audible/mobile/player/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/audible/mobile/player/Player;


# virtual methods
.method public abstract configureStandalonePlayerService(Lcom/audible/playersdk/notification/PlayerNotificationFactory;Lcom/audible/playersdk/headset/HeadsetPolicy;)V
.end method

.method public abstract getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;
.end method

.method public abstract getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.end method

.method public abstract getChapterCount()I
.end method

.method public abstract getCoverArt(Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
.end method

.method public abstract getCurrentChapter()Lcom/audible/mobile/audio/metadata/ChapterMetadata;
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract loadPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
.end method

.method public abstract nextChapter()V
.end method

.method public abstract previousChapter()V
.end method

.method public abstract registerExtraPlayerFactory(Lsharedsdk/MediaSourceType;Lcom/audible/playersdk/player/PlayerFactory;)V
.end method

.method public abstract registerPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract releasePlayer()Lcom/audible/mobile/player/Player;
.end method

.method public abstract setAudioDataSourceWithoutPrepare(Lcom/audible/mobile/player/AudioDataSource;)V
.end method

.method public abstract unregisterPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
