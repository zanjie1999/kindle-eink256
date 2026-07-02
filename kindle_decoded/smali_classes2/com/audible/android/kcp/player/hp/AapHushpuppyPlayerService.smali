.class public Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;
.super Ljava/lang/Object;
.source "AapHushpuppyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;,
        Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final NARRATION_SPEED_PREFS_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;


# instance fields
.field private isSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCatalogFilesystemHushpuppyLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

.field private final mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mEventBus:Lde/greenrobot/event/EventBus;

.field private final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private final mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

.field private mPlayerState:Lcom/audible/mobile/player/State;

.field private final preferencesStore:Lcom/audible/android/kcp/common/AiRPreferencesStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 83
    sget-object v0, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;->PLAYER_NARRATION_SPEED:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    sput-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->NARRATION_SPEED_PREFS_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/common/AiRPreferencesStore;)V
    .locals 7

    .line 87
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/player/PlayerManager;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/mobile/player/PlayerManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;-><init>(Landroid/content/Context;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/player/PlayerManager;Lcom/audible/android/kcp/common/AiRPreferencesStore;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/player/PlayerManager;Lcom/audible/android/kcp/common/AiRPreferencesStore;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    iput-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerState:Lcom/audible/mobile/player/State;

    .line 93
    iput-object p2, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCatalogFilesystemHushpuppyLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    .line 94
    iput-object p4, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    .line 95
    iput-object p3, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 96
    iput-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mContext:Landroid/content/Context;

    .line 98
    new-instance p2, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;

    invoke-direct {p2, p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;-><init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)V

    invoke-interface {p4, p2}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 99
    new-instance p2, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    .line 100
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p3

    const-class p4, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p3, p4}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/mobile/identity/IdentityManager;

    .line 101
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p4

    const-class v0, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {p4, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {p2, p1, p3, p4}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p2, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    .line 103
    iput-object p5, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->preferencesStore:Lcom/audible/android/kcp/common/AiRPreferencesStore;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mEventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    return-object p0
.end method

.method static synthetic access$200()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 66
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$402(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerState:Lcom/audible/mobile/player/State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private isFileValid(Ljava/io/File;)Z
    .locals 5

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "File is not a directory"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->File_is_invalid_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_path_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    invoke-virtual {v0, v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 244
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "File does not exist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->File_is_invalid_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    invoke-virtual {v0, v2, p1, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V
    .locals 4

    .line 107
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerService started in the background\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method private longMillisecondsToInt(J)I
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 375
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

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


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerManager;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    iget-object v1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v1}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->longMillisecondsToInt(J)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTimeAvailableMillis()I
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCatalogFilesystemHushpuppyLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinFromCatalogFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getDuration()I

    move-result v0

    return v0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mMaxAvailableTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTempo()F
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->preferencesStore:Lcom/audible/android/kcp/common/AiRPreferencesStore;

    sget-object v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->NARRATION_SPEED_PREFS_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->getFloat(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;F)F

    move-result v0

    .line 286
    sget-object v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "tempo retrieved from user preference settings %f"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 137
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 177
    sget-object p1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Audio file was null!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sget-object p1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Audio file path was empty or blank!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isFileValid(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    sget-object p1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "File is invalid, can\'t open it!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 191
    :cond_2
    sget-object v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "opening Audio file, path is:"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".partial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCatalogFilesystemHushpuppyLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-static {p2}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    sget-object p1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full audio file of this asin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists! Not going to open the partial file!"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v0

    .line 204
    :cond_3
    iget-object p2, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p2}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p2

    .line 205
    iget-object v1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCatalogFilesystemHushpuppyLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v1, p1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinByFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 207
    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p2}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    .line 211
    :cond_4
    new-instance p2, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;

    invoke-direct {p2, p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;-><init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)V

    .line 212
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 213
    iget-object v3, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v3, p2}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    if-eqz v1, :cond_5

    .line 216
    sget-object v3, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v4, "File is valid, resetting player and setting audio data source .."

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 217
    new-instance v3, Lcom/audible/mobile/player/AudioDataSource;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    sget-object v4, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-direct {v3, v1, p1, v4}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V

    .line 218
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->reset()V

    .line 219
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1, v3}, Lcom/audible/mobile/player/Player;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 221
    :try_start_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    sget-object p1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unable to wait till audioDataSource is set.  Countdown got interrupted."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 226
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1, p2}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return v2

    .line 231
    :cond_5
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {p1, p2}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return v0
.end method

.method public pause()V
    .locals 1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->stop()V

    .line 169
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->seekTo(IZ)V

    return-void
.end method

.method public seekTo(IZ)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Posting SeekingToNewAudioPosition event"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mEventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/readalong/AudioPositionSeekEvent$AudioSeeking;->INSTANCE:Lcom/audible/hushpuppy/common/event/readalong/AudioPositionSeekEvent$AudioSeeking;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isPlaying()Z

    move-result v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v1, p1}, Lcom/audible/mobile/player/Player;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->start()V

    :cond_0
    return-void
.end method

.method public setTempo(F)V
    .locals 3

    .line 275
    sget-object v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "setting tempo: %f and putting it in preferences"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-static {p1}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->fromSpeedAsFloat(F)Lcom/audible/android/kcp/player/NarrationSpeedTempo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/android/kcp/player/NarrationSpeedTempo;->getSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 277
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->preferencesStore:Lcom/audible/android/kcp/common/AiRPreferencesStore;

    sget-object v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->NARRATION_SPEED_PREFS_KEY:Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {v0, v1, p1}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->setFloat(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;F)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->mPlayerManager:Lcom/audible/mobile/player/PlayerManager;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->logPlayServiceStartupException(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void
.end method
