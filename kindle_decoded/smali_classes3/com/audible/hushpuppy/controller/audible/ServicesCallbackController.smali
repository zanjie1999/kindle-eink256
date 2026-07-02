.class public final Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;
.super Ljava/lang/Object;
.source "ServicesCallbackController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

.field private libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

.field private mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

.field private upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IUpsellModel;Lcom/audible/hushpuppy/controller/ILibraryController;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/NavigationListener;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 100
    check-cast p2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 101
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    .line 102
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    .line 103
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 104
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    .line 105
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 106
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method private getDownloadState(Lcom/audible/mobile/download/service/DownloadingInfo$State;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
    .locals 3

    .line 415
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 417
    :catch_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to translate download state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 418
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    return-object p1
.end method

.method private longMillisecondsToInt(J)I
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 273
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning, audiobook duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " overflows int, the type used for audiobook duration! Expect bad things to happen."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const p1, 0x7fffffff

    return p1

    :cond_0
    long-to-int p2, p1

    return p2
.end method

.method private relationshipMatchesAsin(Ljava/lang/String;)Z
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

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


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;)V
    .locals 3

    .line 348
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received AudioDownloadSuccessfulEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasAudiobook()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {v0, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 359
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadProgressToComplete()V

    .line 362
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->isUpsellInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    .line 367
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "verifying new file"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/controller/ILibraryController;->verifyAudioFileAvailability(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadAddedEvent;)V
    .locals 2

    .line 187
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DownloadAddedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadAddedEvent;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 191
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadProgressToEmpty()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;)V
    .locals 2

    .line 202
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DownloadCancelledEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->CANCELLED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 206
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V

    .line 207
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setAudioFileFound(Z)V

    .line 209
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncFileFound(Z)V

    .line 210
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->isUpsellInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;)V
    .locals 2

    .line 223
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DownloadErrorEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ERROR:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 227
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setAudioFileFound(Z)V

    .line 228
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadProgressToEmpty()V

    .line 229
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->isUpsellInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;)V
    .locals 3

    .line 381
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received DownloadPlayableEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;

    invoke-direct {v2, v0, v1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;-><init>(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    invoke-virtual {p1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;)V
    .locals 5

    .line 242
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received DownloadProgressEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->getState()Lcom/audible/mobile/download/service/DownloadingInfo$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->getDownloadState(Lcom/audible/mobile/download/service/DownloadingInfo$State;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 246
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->getProgressBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadProgress(JJ)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getMaxAvailablePosition()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 257
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;->getProgressBytes()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->longMillisecondsToInt(J)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 256
    invoke-virtual {v1, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HushpuppyPlayerException while retrieving max time available"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;)V
    .locals 2

    .line 302
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received DownloadStateEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->relationshipMatchesAsin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;->getState()Lcom/audible/mobile/download/service/DownloadingInfo$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->getDownloadState(Lcom/audible/mobile/download/service/DownloadingInfo$State;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadTimeProgressEvent;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received DownloadTimeProgressEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadTimeProgressEvent;->getDownloadedTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 292
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HushpuppyPlayerException while retrieving max time available"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayCompletionEvent;)V
    .locals 1

    .line 114
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "received PlayCompletionEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentAudioPosition(I)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received PlayNarrationRateChangedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;->getNarrationRate()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrationSpeed(F)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;)V
    .locals 2

    .line 123
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received PlaybackPositionChangedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/NavigationListener;->isIgnoreAudioPositionChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentAudioPosition(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->inContinuousScrollReaderMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->refreshTransientHighlighting(I)V

    goto :goto_0

    .line 137
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/NavigationListener;->isIgnoreAudioPositionChange()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Ignoring PlaybackPositionChangedEvent because ignoreAudioChange: %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring PlaybackPositionChangedEvent because isPlaying: %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;)V
    .locals 2

    .line 168
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received PlayerNewContentLoadedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;->getNarrator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrator(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 174
    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getPlayingAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->detachPlayerListener()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;)V
    .locals 2

    .line 158
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received PlayerStateChangedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;)V
    .locals 3

    .line 316
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "received SyncDownloadSuccessfulEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAcr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    .line 320
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 322
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 323
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/controller/ILibraryController;->verifyAudioFileAvailability(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 331
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current relationship is null. Unable to verify sync file."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 333
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "ACR from event is null. Unable to verify sync file."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_2
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 335
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    goto :goto_0

    .line 336
    :cond_3
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    .line 334
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 337
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/ServicesCallbackController;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/controller/ILibraryController;->verifyAudioFileAvailability(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;)V

    :cond_4
    :goto_1
    return-void
.end method
