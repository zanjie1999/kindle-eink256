.class public interface abstract Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
.super Ljava/lang/Object;
.source "IAudibleService.java"


# virtual methods
.method public abstract attachDownloadListener()V
.end method

.method public abstract attachPlayerListener()V
.end method

.method public abstract changeNarrationSpeed(F)V
.end method

.method public abstract deletePair(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract deleteSamplePair(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract detachPlayerListener()V
.end method

.method public abstract downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract downloadPair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract downloadSampleAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
.end method

.method public abstract downloadSamplePair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
.end method

.method public abstract downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)V
.end method

.method public abstract downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
.end method

.method public abstract getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J
.end method

.method public abstract getCurrentNarrationSpeed()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation
.end method

.method public abstract getDownloadedContentFilePath()Ljava/lang/String;
.end method

.method public abstract getDuration()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation
.end method

.method public abstract getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;
.end method

.method public abstract getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;
.end method

.method public abstract getMaxAvailablePosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation
.end method

.method public abstract getPlayingAsin()Ljava/lang/String;
.end method

.method public abstract initAllServices(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
.end method

.method public abstract isAsinLoaded(Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation
.end method

.method public abstract isAudioBookNew(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract isAudioFileDownloading(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract isAudioFileQueued(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract isAudiobookPlayable(Ljava/lang/String;)Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract loadFile(Ljava/lang/String;Ljava/io/File;Z)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract stop()V
.end method

.method public abstract stopAndHidePlayerForAsin(Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract tryToCancel(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
.end method

.method public abstract updateLocalAudioFileLocation(Lcom/audible/mobile/domain/Asin;ZLjava/io/File;)I
.end method

.method public abstract updateLocalSyncFileLocation(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I
.end method
