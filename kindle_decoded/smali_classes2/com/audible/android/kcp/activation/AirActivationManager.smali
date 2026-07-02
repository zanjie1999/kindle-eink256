.class public Lcom/audible/android/kcp/activation/AirActivationManager;
.super Ljava/lang/Object;
.source "AirActivationManager.java"

# interfaces
.implements Lcom/audible/android/kcp/activation/ActivationManager;


# static fields
.field private static final ACTIVATION_FILE_NAME:Ljava/lang/String; = "AudibleActivation.sys"

.field private static final ACTIVATION_WAIT_TIME:Lcom/audible/mobile/domain/Time;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MANUFACTURER:Ljava/lang/String; = "Kindle,Android"

.field private static final MODEL:Ljava/lang/String;

.field private static final PLAYER_TYPE:Ljava/lang/String; = "audible_adp"


# instance fields
.field private final countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private mActivationFile:Ljava/io/File;

.field private final mAudibleDeviceActivation:Lcom/audible/mobile/activation/AudibleDeviceActivation;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/activation/AirActivationManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->MODEL:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->ACTIVATION_WAIT_TIME:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 55
    new-instance v2, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;

    new-instance v0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;

    .line 56
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v3, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v1, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/identity/IdentityManager;

    sget-object v3, Lcom/audible/android/kcp/activation/AirActivationManager;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle,Android"

    const-string v5, "audible_adp"

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;-><init>(Lcom/audible/mobile/identity/IdentityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v3, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    invoke-virtual {v1, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    .line 58
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v3

    const-class v4, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-virtual {v3, v4}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/DeviceInfoProvider;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/activation/ActivationDataRepository;)V

    const-class v0, Lcom/audible/android/kcp/activation/AirActivationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;

    invoke-direct {v5}, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/audible/android/kcp/activation/AirActivationManager;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/AudibleDeviceActivation;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/framework/Factory1;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/AudibleDeviceActivation;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/framework/Factory1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/activation/AudibleDeviceActivation;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mAudibleDeviceActivation:Lcom/audible/mobile/activation/AudibleDeviceActivation;

    .line 65
    iput-object p3, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mActivationFile:Ljava/io/File;

    .line 66
    iput-object p4, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    iput-object p5, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/activation/AirActivationManager;Lcom/audible/android/kcp/activation/ActivationCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/activation/AirActivationManager;->activateDeviceBlockingCall(Lcom/audible/android/kcp/activation/ActivationCallback;)V

    return-void
.end method

.method private activateDeviceBlockingCall(Lcom/audible/android/kcp/activation/ActivationCallback;)V
    .locals 6

    .line 90
    invoke-virtual {p0}, Lcom/audible/android/kcp/activation/AirActivationManager;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Device activated, Passing success."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/activation/ActivationCallback;->onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 97
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Request to activate device"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v2, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->ACTIVATION:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    iget-object v3, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/hushpuppy/redding/R$string;->activationUrl:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Calling AAP to activate device."

    invoke-interface {v0, v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/audible/android/kcp/activation/AirActivationListener;

    iget-object v2, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1, v2}, Lcom/audible/android/kcp/activation/AirActivationListener;-><init>(Lcom/audible/android/kcp/activation/ActivationCallback;Ljava/util/concurrent/CountDownLatch;)V

    .line 102
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v2

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_REQUEST:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v2, v3}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 103
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v2

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v2, v3}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 104
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v2

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_FAILURE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v2, v3}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 105
    iget-object v2, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mAudibleDeviceActivation:Lcom/audible/mobile/activation/AudibleDeviceActivation;

    invoke-interface {v2, v0}, Lcom/audible/mobile/activation/AudibleDeviceActivation;->activate(Lcom/audible/mobile/activation/ActivationListener;)V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/audible/android/kcp/activation/AirActivationManager;->ACTIVATION_WAIT_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    sget-object v4, Lcom/audible/android/kcp/activation/AirActivationManager;->ACTIVATION_WAIT_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v4}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Time out happened. Returning failure"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v2, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_REQUEST_TIME_OUT:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v2}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 118
    sget-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->FAILURE:Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/activation/ActivationCallback;->onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    sget-object v2, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activate device failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->FAILURE:Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/activation/ActivationCallback;->onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized activateDevice(Lcom/audible/android/kcp/activation/ActivationCallback;)V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/android/kcp/activation/AirActivationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/android/kcp/activation/AirActivationManager$1;-><init>(Lcom/audible/android/kcp/activation/AirActivationManager;Lcom/audible/android/kcp/activation/ActivationCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deactivateDevice()Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mActivationFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AudibleActivation.sys"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mActivationFile:Ljava/io/File;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mActivationFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 137
    sget-object v1, Lcom/audible/android/kcp/activation/AirActivationManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Activation file deleted %b"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager;->mAudibleDeviceActivation:Lcom/audible/mobile/activation/AudibleDeviceActivation;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result v0

    return v0
.end method
