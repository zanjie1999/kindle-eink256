.class public Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;
.super Lcom/audible/mobile/player/AbstractPlayer;
.source "DefaultAudibleReadyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;,
        Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;
    }
.end annotation


# instance fields
.field private final audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

.field private final audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

.field private final audioPlayerEventListener:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;

.field private audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

.field private final bufferingUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final callbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private isAuthenticated:Z

.field private isFullyDownloadedFile:Z

.field private final metricRecorder:Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;

.field private final onPlayerEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/audio/AudiobookPlayer;)V
    .locals 8

    .line 182
    new-instance v5, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-direct {v5, p4}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;-><init>(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;)V

    const-string v0, "audible-drm-player-callback"

    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/audio/AudiobookPlayer;Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/player/service/AudioFocus;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/audio/AudiobookPlayer;Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/player/service/AudioFocus;)V
    .locals 2

    .line 201
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/AbstractPlayer;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;-><init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;)V

    iput-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayerEventListener:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->onPlayerEventListeners:Ljava/util/Set;

    const/4 v0, 0x1

    const-string v1, "audible-drm-buffering-executor"

    .line 121
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Executors;->newScheduledThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->bufferingUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "Context can not be null"

    .line 202
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "IdentityManager can not be null"

    .line 203
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "MetricManager must not be null"

    .line 204
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AudioPlayer can not be null"

    .line 205
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultPlayerVolumeControls can not be null"

    .line 206
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callbackExecutor can not be null."

    .line 207
    invoke-static {p6, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    iput-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 210
    new-instance p2, Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;

    invoke-direct {p2, p3}, Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->metricRecorder:Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;

    .line 211
    iput-object p4, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    .line 212
    iput-object p5, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    .line 213
    iput-object p6, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 214
    new-instance p2, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    iget-object p3, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->onPlayerEventListeners:Ljava/util/Set;

    invoke-direct {p2, p3, p6}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;-><init>(Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    if-nez p7, :cond_0

    .line 215
    new-instance p7, Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;

    invoke-direct {p2, p0}, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;-><init>(Lcom/audible/mobile/player/Player;)V

    invoke-direct {p7, p1, p2}, Lcom/audible/mobile/player/service/AudioFocus;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/service/AudioFocusEventListener;)V

    :cond_0
    iput-object p7, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p0
.end method

.method static synthetic access$102(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p1
.end method

.method static synthetic access$200(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/PlayerStatusSnapshot;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->newPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Lcom/audible/mobile/player/audio/AudiobookPlayer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$702(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isFullyDownloadedFile:Z

    return p1
.end method

.method private authenticate()Z
    .locals 6

    .line 581
    iget-boolean v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isAuthenticated:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceActivationSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v0

    .line 586
    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v2}, Lcom/audible/mobile/identity/IdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v3}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceType()Lcom/audible/mobile/identity/DeviceType;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Authentication failed. Invalid DeviceSerialNumber!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v2, Lcom/audible/mobile/player/AuthorizationErrorSource;->PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    return v4

    :cond_1
    if-nez v2, :cond_2

    .line 596
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Authentication failed. Invalid CustomerId!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v2, Lcom/audible/mobile/player/AuthorizationErrorSource;->PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    return v4

    .line 601
    :cond_2
    invoke-static {v3}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 602
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Authentication failed. Invalid DeviceType!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v2, Lcom/audible/mobile/player/AuthorizationErrorSource;->PARAMETER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    return v4

    .line 607
    :cond_3
    iget-object v5, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v5, v0, v2, v3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object v0

    .line 608
    sget-object v2, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 643
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->UNSPECIFIED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 637
    :pswitch_0
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->RENEWED_VOUCHER_EXPIRED:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 629
    :pswitch_2
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 625
    :pswitch_3
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->INVALID_VOUCHER:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 621
    :pswitch_4
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 617
    :pswitch_5
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->DATASOURCE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 613
    :pswitch_6
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    sget-object v3, Lcom/audible/mobile/player/AuthorizationErrorSource;->DEVICE:Lcom/audible/mobile/player/AuthorizationErrorSource;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    goto :goto_0

    .line 610
    :pswitch_7
    iput-boolean v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isAuthenticated:Z

    return v1

    .line 647
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Authentication failed: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxAvailableTime()I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->isFileLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isFullyDownloadedFile:Z

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getDuration()I

    move-result v0

    return v0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->getTimeAvailable()I

    move-result v0

    return v0
.end method

.method private getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    return-object v0
.end method

.method private getVolume()F
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getVolume()F

    move-result v0

    return v0
.end method

.method private newPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;
    .locals 9

    .line 709
    new-instance v8, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v2

    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getCurrentPosition()I

    move-result v4

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getMaxAvailableTime()I

    move-result v5

    invoke-virtual {p0}, Lcom/audible/mobile/player/AbstractPlayer;->getSpeed()Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v6

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getVolume()F

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V

    return-object v8
.end method

.method private notifyError(Lcom/audible/mobile/player/Error;)V
    .locals 3

    .line 700
    invoke-static {}, Lcom/audible/mobile/util/ErrorUtils;->getCurrentStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Notify player event listeners : ERROR {} at {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 704
    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private seek(I)Z
    .locals 4

    .line 659
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getMaxAvailableTime()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_7

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->pause(Z)V

    .line 671
    :cond_1
    sget-object v2, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    iget-object v3, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v3, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 688
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "AudiobookPlayer returned unhandled result, returning false"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    .line 685
    :cond_2
    sget-object p1, Lcom/audible/mobile/player/Error;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return v1

    .line 682
    :cond_3
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    const-string v0, "seekTo"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    return v1

    .line 679
    :cond_4
    sget-object p1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return v1

    .line 673
    :cond_5
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onSeekComplete()V

    if-eqz v0, :cond_6

    .line 675
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->start()V

    :cond_6
    return v2

    .line 661
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "Request to seek is outside of acceptable range.  Acceptable range is [0, {}].  Value was {}"

    invoke-interface {v2, v3, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private stop(Z)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->abandonAudioFocus()I

    :cond_1
    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onStop()V

    :cond_2
    return-void
.end method


# virtual methods
.method public clearPreferences()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerSettingsProvider;->clear()V

    return-void
.end method

.method public decrementVolume()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->decrementVolume()V

    return-void
.end method

.method protected getCurrentPosition()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected getDuration()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getDuration()I

    move-result v0

    return v0
.end method

.method public incrementVolume()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->incrementVolume()V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->stop(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->reset()V

    .line 547
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onDestroy()V

    .line 549
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->onPlayerEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 550
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->onDestroy()V

    .line 552
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->bufferingUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 553
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 257
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->pause(Z)V

    return-void
.end method

.method pause(Z)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Pause called, notify is {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    const-string v0, "pause"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    :goto_0
    return-void

    .line 276
    :cond_1
    sget-object p1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 272
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "A duplicate pause request was consumed. Stopping audio focus from restarting..."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {p1}, Lcom/audible/mobile/player/service/AudioFocus;->doNotRestartPlaybackOnAudioFocusGain()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPause()V

    :cond_4
    return-void
.end method

.method public prepare(I)V
    .locals 12

    .line 439
    sget-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PrepareResult:[I

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v1, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    const-string v0, "prepare"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {p1}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->getTimeAvailable()I

    move-result p1

    int-to-long v2, p1

    .line 442
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getDuration()I

    move-result p1

    int-to-long v4, p1

    const/4 p1, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isFullyDownloadedFile:Z

    .line 444
    iget-object v4, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_3

    .line 445
    invoke-interface {v4, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 448
    :cond_3
    iget-boolean v4, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isFullyDownloadedFile:Z

    if-nez v4, :cond_4

    .line 449
    iget-object v5, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->bufferingUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$MaxAvailableTimeUpdateRunnable;-><init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;)V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 450
    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    .line 453
    :cond_4
    iget-object v4, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getDuration()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    iget-boolean p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isFullyDownloadedFile:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "Duration is {}, time available is {}, isFullyDownloadedFile {}"

    invoke-interface {v4, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->newPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method

.method public registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->onPlayerEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$1;-><init>(Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Releasing audio player resources and closing current file"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Resetting the player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayerEventListener:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->removeOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->reset()V

    .line 508
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 509
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 510
    iput-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz v0, :cond_1

    .line 514
    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v2, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onReset(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 515
    iput-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    :cond_1
    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->isAuthenticated:Z

    .line 519
    iput-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->seek(I)Z

    return-void
.end method

.method public setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "The dataSource was null, returning"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "The dataSource file does not exist, returning"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 390
    sget-object p1, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    if-eq v0, v1, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->reset()V

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayerEventListener:Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$InternalAudioPlayerEventListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->addOnPlayerEventListener(Lcom/audible/mobile/player/audio/AudiobookPlayerEventListener;)Z

    .line 402
    sget-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    iget-object v1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v1, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 432
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "AudioPlayer returned unhandled result from calling setDataSource"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "AudiobookPlayer returned SUCCESS"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 422
    iget-object v1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Set new audiobook metadata {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->getNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v0

    .line 425
    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 426
    iget-object v1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Restoring saved narration speed {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    iput-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 429
    iget-object p1, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->newPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void

    .line 415
    :cond_4
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "AudiobookPlayer returned FAILED"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 416
    sget-object p1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 412
    :cond_5
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    const-string v0, "setDataSource"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    return-void

    .line 408
    :cond_6
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "AudiobookPlayer returned FILE_NOT_FOUND"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 409
    sget-object p1, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 404
    :cond_7
    iget-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "AudiobookPlayer returned UNSUPPORTED_FILE"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 405
    sget-object p1, Lcom/audible/mobile/player/Error;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 465
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->setNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->setVolume(F)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 4

    .line 310
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->authenticate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Authentication failed, cannot start playback"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/audible/mobile/player/Error;->LICENSE_FAILED:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->requestAudioFocus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unable to successfully request audio focus."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/audible/mobile/player/Error;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    .line 319
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->metricRecorder:Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;->recordFailureToAcquireAudioFocus()V

    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    .line 326
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    if-eq v0, v2, :cond_3

    .line 328
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Starting playback failed. Resetting and restarting the player..."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->reset()V

    .line 331
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 333
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->authenticate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Authentication failed, giving up..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/audible/mobile/player/Error;->LICENSE_FAILED:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    .line 344
    :cond_3
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v2}, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 345
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Audio focus lost during player startup. Pausing player."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->pause(Z)V

    return-void

    .line 350
    :cond_4
    sget-object v2, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_8

    const/4 v1, 0x2

    if-eq v2, v1, :cond_7

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    const/4 v1, 0x4

    if-eq v2, v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Unhandled result {} from call to start"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "AudiobookPlayer returned COULD_NOT_READ_FILE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/audible/mobile/player/Error;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/Error;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->notifyError(Lcom/audible/mobile/player/Error;)V

    goto :goto_0

    .line 358
    :cond_6
    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {p0, v1, v0}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    goto :goto_0

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "AudiobookPlayer returned NO_ACTION, NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->playerEventListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlay()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->stop(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->onPlayerEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public volumeBoost(Z)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;->audioPlayer:Lcom/audible/mobile/player/audio/AudiobookPlayer;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/audio/AudiobookPlayer;->volumeBoost(Z)V

    return-void
.end method
