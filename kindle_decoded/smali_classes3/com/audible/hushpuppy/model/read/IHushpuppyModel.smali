.class public interface abstract Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.super Ljava/lang/Object;
.source "IHushpuppyModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;,
        Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;,
        Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;,
        Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
    }
.end annotation


# virtual methods
.method public abstract getCorrespondingEBookPosition(I)I
.end method

.method public abstract getCurrentAudioPosition()I
.end method

.method public abstract getCurrentAudioPositionPercent()I
.end method

.method public abstract getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;
.end method

.method public abstract getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
.end method

.method public abstract getDownloadProgressInMB()F
.end method

.method public abstract getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
.end method

.method public abstract getDownloadTotalSizeInIntMB()I
.end method

.method public abstract getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getMinAudiobookPosAfterEbookPosition(I)I
.end method

.method public abstract getNarrationSpeedSetting()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
.end method

.method public abstract getNarrator()Ljava/lang/String;
.end method

.method public abstract getPctDownloaded()I
.end method

.method public abstract getPlaybackTimeLeft()I
.end method

.method public abstract getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
.end method

.method public abstract getProviderPriority(Lcom/amazon/kindle/krx/content/IBook;)I
.end method

.method public abstract getRemainingText()Ljava/lang/String;
.end method

.method public abstract getSecondaryProgress()Ljava/lang/Integer;
.end method

.method public abstract getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasAudiobookAsin()Z
.end method

.method public abstract hasFullAudiobook()Z
.end method

.method public abstract hasSampleAudiobook()Z
.end method

.method public abstract hasSyncData()Z
.end method

.method public abstract isAudiobookDownloadPending()Z
.end method

.method public abstract isAudiobookDownloaded()Z
.end method

.method public abstract isAudiobookDownloading()Z
.end method

.method public abstract isContentSelectionPlayable(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
.end method

.method public abstract isCurrentPositionPlayable()Z
.end method

.method public abstract isEbookOpen()Z
.end method

.method public abstract isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract isPlayPossibleAtCurrentEbookLocation()Z
.end method

.method public abstract isPlayerToggledOn()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isScrubbing()Z
.end method

.method public abstract isSeekBarPositionPlayable()Z
.end method

.method public abstract setDownloadProgressToComplete()V
.end method

.method public abstract setDownloadProgressToEmpty()V
.end method

.method public abstract setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V
.end method

.method public abstract setNarrationSpeedToDefault()V
.end method

.method public abstract setShowPlayer(Z)V
.end method
