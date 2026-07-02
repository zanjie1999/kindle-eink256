.class public abstract Lcom/amazon/kcp/application/SharedBindingsModule;
.super Ljava/lang/Object;
.source "SharedBindingsModule.java"


# static fields
.field private static final MAX_CONCURRENT_THREAD:I = 0x4

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kcp/application/SharedBindingsModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/SharedBindingsModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
    .locals 1

    .line 85
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;-><init>()V

    return-object v0
.end method

.method static getAndroidApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method static getAndroidDeviceClassFactory()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;
    .locals 1

    .line 127
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    return-object v0
.end method

.method static getBroadcastReceiverHelper(Landroid/app/Application;)Lcom/amazon/android/util/BroadcastReceiverHelper;
    .locals 1

    .line 79
    new-instance v0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;

    invoke-direct {v0, p0}, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static getContentOpenMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 1

    .line 91
    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V

    return-object v0
.end method

.method static getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 4

    .line 60
    new-instance v0, Lcom/amazon/kindle/cover/CoverImageService;

    new-instance v1, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;

    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cover/CoverImageService;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static getHushpuppyUpsellDetector()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;
    .locals 1

    .line 109
    invoke-static {}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetectorManager;->getInstance()Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    move-result-object v0

    return-object v0
.end method

.method static getIDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 4

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AndroidDeviceType;->getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v3

    .line 54
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;-><init>(Lcom/mobipocket/android/library/reader/AndroidSecurity;Lcom/amazon/kcp/application/IAmazonDeviceType;Landroid/content/Context;)V

    return-object v1
.end method

.method static getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 1

    .line 97
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    return-object v0
.end method

.method static getReaderController(Landroid/app/Application;)Lcom/amazon/kcp/reader/IReaderController;
    .locals 1

    .line 73
    new-instance v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;
    .locals 1

    .line 67
    new-instance v0, Lcom/amazon/kindle/sidecar/DefaultSidecarProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/sidecar/DefaultSidecarProviderRegistry;-><init>()V

    return-object v0
.end method

.method static getUserSettingsController(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract getAccountSecretProvider(Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;)Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;
.end method

.method abstract getBrightnessManager(Lcom/amazon/kindle/brightness/BrightnessManager;)Lcom/amazon/kindle/brightness/IBrightnessManager;
.end method

.method abstract getFileFactory(Lcom/mobipocket/jsr75/filesystem/AndroidFileFactory;)Lcom/amazon/kindle/io/IFileConnectionFactory;
.end method

.method abstract getKindleApplicationController(Lcom/amazon/kcp/application/IAndroidApplicationController;)Lcom/amazon/kcp/application/IKindleApplicationController;
.end method

.method abstract getMarkedPositionManager(Lcom/amazon/kindle/positionmarker/MarkedPositionManager;)Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
.end method

.method abstract getSearchUtils(Lcom/amazon/kcp/search/enhancedsearch/BaseSearchUtils;)Lcom/amazon/kindle/krx/search/ISearchUtils;
.end method
