.class public final Lcom/audible/hushpuppy/model/write/HushpuppyModel;
.super Lcom/audible/hushpuppy/model/write/AbstractModel;
.source "HushpuppyModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.implements Lcom/audible/hushpuppy/model/ITimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/model/write/AbstractModel;",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
        "Lcom/audible/hushpuppy/model/ITimeOutCallback<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL:I = 0x64

.field private static final BYTES_PER_MB:J = 0xf4240L

.field private static final CHROME_UTILS:Lcom/audible/hushpuppy/common/readalong/ChromeUtils;

.field private static final DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SPEED_EPSILON:F = 0.001f


# instance fields
.field private audioFileFound:Z

.field private currentAudioPosition:I

.field private currentEBookPosition:I

.field private currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private currentlySelectedAudioPosition:I

.field private downloadState:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private lastOpenedEBook:Lcom/amazon/kindle/krx/content/IBook;

.field private maxDurationAudioPosition:I

.field private narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field private narrator:Ljava/lang/String;

.field private playerState:Lcom/audible/hushpuppy/common/player/PlayerState;

.field private progressDownloadBytes:J

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field protected restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private scrubbing:Z

.field private secondaryProgressAudioPosition:I

.field private seekBarEBookPosition:I

.field private showPlayer:Z

.field private syncData:Lcom/audible/hushpuppy/sync/ISyncData;

.field private syncFileFound:Z

.field private title:Ljava/lang/String;

.field private totalDownloadBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 54
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sput-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 57
    new-instance v0, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->CHROME_UTILS:Lcom/audible/hushpuppy/common/readalong/ChromeUtils;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;-><init>(Lde/greenrobot/event/EventBus;)V

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentEBookPosition:I

    .line 111
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 154
    iput-object p2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 155
    iput-object p3, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 156
    iput-object p4, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method

.method private areFilesMissing()Z
    .locals 4

    .line 1049
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->audioFileFound:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncFileFound:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1050
    :goto_1
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "areFilesMissing = %b"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method private clearDownloadProgressData()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 554
    iput-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    .line 555
    iput-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    .line 556
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method private getNarrationSpeedSettingFromRate(F)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
    .locals 6

    .line 646
    invoke-static {}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 647
    invoke-virtual {v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Couldn\'t find match in setting for given speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; using default."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 653
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    return-object p1
.end method

.method private getProviderPriority()I
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-nez v0, :cond_0

    .line 1112
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "getProviderPriority is MIN_PRIORITY (missing relationship)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v0

    goto :goto_0

    .line 1114
    :cond_0
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasAudiobook()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "getProviderPriority is MIN_PRIORITY (missing audiobook)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 1116
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v0

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1118
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v0

    goto :goto_0

    .line 1120
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->SAMPLE_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getTimeLeft(II)I
    .locals 0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method private isPositionDownloaded(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1064
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRelationshipChanged(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1029
    :cond_0
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->equalsIgnoreTimeLastFetched(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private reset(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 1230
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HushpuppyModel reset"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 1231
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isRelationshipChanged(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    .line 1234
    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    const/4 p1, 0x0

    .line 1235
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setTitle(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrator(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncData(Lcom/audible/hushpuppy/sync/ISyncData;)V

    .line 1238
    sget-object p1, Lcom/audible/hushpuppy/common/player/PlayerState;->IDLE:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    .line 1239
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    const/4 p1, -0x1

    .line 1240
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentAudioPosition(I)V

    const/4 v0, 0x0

    .line 1241
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setMaxDurationAudioPosition(I)V

    .line 1242
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Inside reset, maxDuration is reset to 0"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V

    .line 1244
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setEBookPosition(I)V

    .line 1245
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSeekBarEBookPosition(I)V

    .line 1246
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setAudioFileFound(Z)V

    .line 1247
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncFileFound(Z)V

    .line 1248
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setScrubbing(Z)V

    const/4 p1, 0x1

    .line 1249
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    .line 1250
    invoke-direct {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->clearDownloadProgressData()V

    return-void
.end method


# virtual methods
.method public beyondSyncedContent()Z
    .locals 2

    .line 935
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCorrespondingEBookPosition(I)I
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v1, p1

    .line 889
    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/sync/ISyncData;->getEBookPosFromAudiobookPos(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getCurrentAudioPosition()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentAudioPosition:I

    return v0
.end method

.method public getCurrentAudioPositionPercent()I
    .locals 2

    .line 326
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentAudioPosition:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 177
    :cond_0
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getCurrentEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public getDownloadProgressInBytes()J
    .locals 2

    .line 561
    iget-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    return-wide v0
.end method

.method public getDownloadProgressInMB()F
    .locals 2

    .line 571
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadProgressInBytes()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->downloadState:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    return-object v0
.end method

.method public getDownloadTotalSizeInBytes()J
    .locals 2

    .line 566
    iget-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    return-wide v0
.end method

.method public getDownloadTotalSizeInIntMB()I
    .locals 4

    .line 576
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadTotalSizeInBytes()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getEBookPosition()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentEBookPosition:I

    return v0
.end method

.method public getEBookPositionRelativeToSyncedContent(I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 895
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 896
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Ebook position is invalid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 897
    sget-object p1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->INVALID:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_1

    .line 899
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_NoSyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 900
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Sync data is null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 901
    sget-object p1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->INVALID:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p1

    .line 904
    :cond_1
    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncData;->getLoEbookPos()J

    move-result-wide v0

    .line 905
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMaxEBookPositionWithSyncedAudio()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p1

    cmp-long p1, v4, v0

    if-gez p1, :cond_2

    .line 908
    sget-object p1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->BEFORE:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p1

    :cond_2
    cmp-long p1, v4, v2

    if-gtz p1, :cond_3

    .line 910
    sget-object p1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p1

    .line 912
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p1
.end method

.method public getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->lastOpenedEBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getMaxEBookPositionWithSyncedAudio()Ljava/lang/Integer;
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 713
    :cond_0
    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMaxEBookPositionWithSyncedAudio(Lcom/audible/hushpuppy/sync/ISyncData;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSyncedAudioPosition()I
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncData;->getHiAudiobookPos()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getMinAudiobookPosAfterEbookPosition(I)I
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMaxEBookPositionWithSyncedAudio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMinAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result p1

    return p1
.end method

.method public getMinimumSyncedAudioPosition()I
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncData;->getLoAudiobookPos()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getMinimumSyncedAudioPosition(I)I
    .locals 5

    .line 923
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 924
    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncData;->getHiEbookPos()J

    move-result-wide v3

    .line 923
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/sync/ISyncData;->getMinAudiobookPosFromEBookRange(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getNarrationSpeedSetting()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    if-nez v0, :cond_0

    .line 595
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Narration speed is null (this should never happen). Resetting to normal."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    return-object v0
.end method

.method public getNarrator()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrator:Ljava/lang/String;

    return-object v0
.end method

.method public getPctDownloaded()I
    .locals 6

    .line 581
    iget-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 584
    :cond_0
    iget-wide v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getPlaybackTimeLeft()I
    .locals 2

    .line 761
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->scrubbing:Z

    if-eqz v0, :cond_0

    .line 762
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->seekBarEBookPosition:I

    .line 763
    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v1

    .line 762
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getTimeLeft(II)I

    move-result v0

    return v0

    .line 765
    :cond_0
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentAudioPosition:I

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getTimeLeft(II)I

    move-result v0

    return v0
.end method

.method public getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;
    .locals 3

    .line 371
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentEBookPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    goto :goto_1

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSeekBarPositionPlayable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOutsideSampleRegion()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isDownloadRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->DOWNLOAD:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    goto :goto_1

    .line 393
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    goto :goto_1

    .line 387
    :cond_4
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    .line 398
    :goto_1
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "getPlayerControlType = %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->playerState:Lcom/audible/hushpuppy/common/player/PlayerState;

    return-object v0
.end method

.method public getProviderPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 811
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 816
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getProviderPriority is NEGATIVE_PRIORITY (not enabled)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 817
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->NEGATIVE_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    goto :goto_0

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getProviderPriority()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getRemainingText()Ljava/lang/String;
    .locals 3

    .line 751
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->scrubbing:Z

    if-eqz v0, :cond_0

    .line 752
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->CHROME_UTILS:Lcom/audible/hushpuppy/common/readalong/ChromeUtils;

    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentlySelectedAudioPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->millisecondsToTimeRemainingString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->CHROME_UTILS:Lcom/audible/hushpuppy/common/readalong/ChromeUtils;

    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentAudioPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->millisecondsToTimeRemainingString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryProgress()Ljava/lang/Integer;
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v0, :cond_0

    .line 732
    iget v1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getEBookPositionFromAudioPosition(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    return-object v0
.end method

.method public getSyncedAudiobookPosition(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 5

    .line 833
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_0

    .line 834
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition syncData is null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 836
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition contentSelection is null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->InvalidContentSelection:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 839
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition invalid content selection!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 841
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition ebooks don\'t match!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    .line 844
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    int-to-long v1, v1

    .line 845
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    int-to-long v3, p1

    .line 843
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/sync/ISyncData;->getMinAudiobookPosFromEBookRange(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    if-gez p1, :cond_4

    .line 847
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition selection range not synced!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_4
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPositionDownloaded(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 850
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getSyncedAudiobookPosition selection min synced position not downloaded!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    const/4 p1, -0x1

    :cond_5
    return p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudiobookAsin()Z
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_0

    .line 803
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 804
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->hasASIN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFullAudiobook()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSampleAudiobook()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSyncData()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 264
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "hasSyncData is false (syncData is missing)"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public inContinuousScrollReaderMode()Z
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 1192
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAudioDownloadedToCurrentEbookLocation()Z
    .locals 5

    .line 427
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentEBookPosition:I

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 430
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "isAudioDownloadedToCurrentEbookLocation = false (minimumSyncedAudioPosition is -1)"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_0
    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    if-lt v0, v2, :cond_1

    .line 433
    sget-object v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAudioDownloadedToCurrentEbookLocation = false (minimumSyncedAudioPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= secondaryProgressAudioPosiiton = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isAudioFileFound()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->audioFileFound:Z

    return v0
.end method

.method public isAudioPositionPlayable(I)Z
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isAudioPositionPlayable = false (missing sync data)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPositionDownloaded(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 467
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isAudioPositionPlayable = false (position not downloaded)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isAudiobookDownloadPending()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->downloadState:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PAUSED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-eq v0, v1, :cond_0

    .line 499
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "isAudiobookDownloadPending is false (downloadState not PAUSED and downloadState not PENDING"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isAudiobookDownloaded()Z
    .locals 3

    .line 512
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 513
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "isAudiobookDownloaded is false (secondaryProgressAudioPosition <= 0"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    if-ge v0, v2, :cond_1

    .line 516
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "isAudiobookDownloaded is false (secondaryProgressAudioPosition < maxDurationAudioPosition"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isAudiobookDownloading()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->downloadState:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-eq v0, v1, :cond_0

    .line 481
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "isAudiobookDownloading is false (downloadState not ACTIVE"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isAudiobookEnabled(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasAudiobookAsin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isContentSelectionPlayable(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    .line 828
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncedAudiobookPosition(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCurrentPositionPlayable()Z
    .locals 4

    .line 1070
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1071
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Current Ebook position is invalid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v1

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPositionRelativeToSyncedContent(I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-eq v0, v2, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudioDownloadedToCurrentEbookLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDownloadProgressGreaterThanZero()Z
    .locals 1

    .line 526
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadRequired()Z
    .locals 4

    .line 1035
    invoke-direct {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->areFilesMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudiobookDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudiobookDownloadPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1039
    :goto_0
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isDownloadRequired = %b"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isEbookOpen()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEbookOutsideSampleRegion()Z
    .locals 4

    .line 1139
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1144
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1145
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1156
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 1157
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 1158
    iget-object v3, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v3, :cond_4

    .line 1159
    invoke-static {v3, v2, v0}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMinAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1160
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPositionDownloaded(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1163
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Cannot verify if EBook is outside sample region, Book Navigator is NULL or IPosition is NULL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 776
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isEnabled is false (missing reader ebook)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-nez v0, :cond_1

    .line 778
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isEnabled is false (missing relationship)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_1
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isEnabled is false (missing relationship ebook)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 784
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isEnabled is false (relationship ebook doesn\'t match reader ebook)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookPlaybackEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 786
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "isEnabled is false (parentalControls playback disabled)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 788
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled is true for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isPlayPossibleAtCurrentEbookLocation()Z
    .locals 3

    .line 406
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "isPlayPossibleAtCurrentEBookLocation = false (missing sync data)"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudioDownloadedToCurrentEbookLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "isPlayPossibleAtCurrentEBookLocation = false (audio not downloaded to current ebook location)"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isPlayerToggledOn()Z
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->showPlayer:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->playerState:Lcom/audible/hushpuppy/common/player/PlayerState;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    sget-object v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isPlaying is %b"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isSampleEbookPositionAfterSyncedLocation()Z
    .locals 4

    .line 950
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "EBook is not open cannot check if sample outside sample region"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 956
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 958
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 960
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "EBook position is invalid. Cannot check if sample is outside sample region or not."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidCurrentPageStartPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v1

    .line 965
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOutsideSampleRegion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPositionRelativeToSyncedContent(I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 970
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Cannot check if sample outside sample region, Book Navigator is NULL or IPosition is NULL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v1
.end method

.method public isScrubbing()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->scrubbing:Z

    return v0
.end method

.method public isSeekBarPositionPlayable()Z
    .locals 4

    .line 1083
    iget v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->seekBarEBookPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1084
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Seekbar ebook position is invalid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->EBookRelativePosition_InvalidSeekBarEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v1

    .line 1089
    :cond_0
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    .line 1090
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->seekBarEBookPosition:I

    .line 1091
    invoke-virtual {p0, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPositionRelativeToSyncedContent(I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-eq v2, v3, :cond_1

    .line 1092
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPositionDownloaded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSyncFileFound()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncFileFound:Z

    return v0
.end method

.method public refreshTransientHighlighting(I)V
    .locals 1

    .line 1201
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TRANSIENT_HIGHLIGHTING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1012
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    return-void
.end method

.method public setAudioFileFound(Z)V
    .locals 1

    .line 683
    iput-boolean p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->audioFileFound:Z

    .line 684
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentAudioPosition(I)V
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getRemainingText()Ljava/lang/String;

    move-result-object v0

    .line 311
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentAudioPosition:I

    .line 312
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getRemainingText()Ljava/lang/String;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-eqz v2, :cond_0

    .line 315
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    .line 319
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 320
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, p1, v1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setCurrentRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 3

    .line 205
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentRelationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isRelationshipChanged(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship has changed, resetting the model!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_0

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    :goto_0
    return-void
.end method

.method public setCurrentlySelectedAudioPosition(I)V
    .locals 1

    .line 340
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentlySelectedAudioPosition:I

    .line 341
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getRemainingText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setDownloadProgress(JJ)V
    .locals 0

    .line 531
    iput-wide p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    .line 532
    iput-wide p3, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    .line 533
    sget-object p3, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    .line 534
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_TOTAL:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    iget-wide p2, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setDownloadProgressToComplete()V
    .locals 3

    .line 539
    iget-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->totalDownloadBytes:J

    iput-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    .line 540
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setDownloadProgressToEmpty()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 545
    iput-wide v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->progressDownloadBytes:J

    .line 546
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V
    .locals 1

    .line 299
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->downloadState:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 300
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setEBookPosition(I)V
    .locals 1

    .line 351
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->currentEBookPosition:I

    .line 352
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setLastOpenedEBook(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 987
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting Last Opened EBook to %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 988
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->lastOpenedEBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method public setMaxDurationAudioPosition(I)V
    .locals 3

    .line 723
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->maxDurationAudioPosition:I

    .line 724
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setMaxDurationAudioPosition: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_DURATION_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 726
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 725
    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setNarrationSpeed(F)V
    .locals 1

    .line 625
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getNarrationSpeedSettingFromRate(F)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    move-result-object p1

    .line 626
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 627
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setNarrationSpeed(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;)V
    .locals 2

    if-nez p1, :cond_0

    .line 608
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Narration speed is null (this should never happen). Resetting to normal."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    goto :goto_0

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrationSpeed:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 614
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setNarrationSpeedToDefault()V
    .locals 1

    .line 635
    sget-object v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrationSpeed(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;)V

    return-void
.end method

.method public setNarrator(Ljava/lang/String;)V
    .locals 1

    .line 226
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrator:Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->playerState:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 286
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setScrubbing(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    iput-boolean p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->scrubbing:Z

    .line 670
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SCRUBBING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecondaryProgressAudioPosition(I)V
    .locals 1

    .line 744
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->secondaryProgressAudioPosition:I

    .line 745
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 745
    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setSeekBarEBookPosition(I)V
    .locals 1

    .line 362
    iput p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->seekBarEBookPosition:I

    .line 363
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_SEEK_BAR_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setShowPlayer(Z)V
    .locals 1

    .line 977
    iput-boolean p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->showPlayer:Z

    .line 978
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setSyncData(Lcom/audible/hushpuppy/sync/ISyncData;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/hushpuppy/sync/ISyncData;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/ISyncData;->getSource()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 251
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 255
    :cond_2
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncData:Lcom/audible/hushpuppy/sync/ISyncData;

    .line 256
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/audible/hushpuppy/sync/ISyncData;->getSource()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setSyncFileFound(Z)V
    .locals 1

    .line 697
    iput-boolean p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->syncFileFound:Z

    .line 698
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 240
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->title:Ljava/lang/String;

    .line 241
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TITLE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->narrator:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 0

    .line 1171
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1172
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Time out happened, but current relation is null. Cannot update HP model toggle state."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1177
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Time out happened, Updating toggle state of HP model to false."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1178
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    return-void

    .line 1182
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Time out happened, but there is asin mismatch. Cannot update HP model toggle state."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic timeOut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    check-cast p2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
