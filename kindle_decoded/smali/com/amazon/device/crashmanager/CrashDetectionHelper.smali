.class public final Lcom/amazon/device/crashmanager/CrashDetectionHelper;
.super Ljava/lang/Object;
.source "CrashDetectionHelper.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;
    }
.end annotation


# static fields
.field private static final ANDROID_API_VERSION:I

.field static final CRASH_TYPE_ERROR:Ljava/lang/String; = "data_app_crash"

.field private static final DEFAULT_DET_BETA_URN:Ljava/lang/String; = "https://det-ta-g7g.integ.amazon.com:443/DeviceEventProxy/DETLogServlet"

.field private static final DEFAULT_DET_PROD_URN:Ljava/lang/String; = "https://det-ta-g7g.amazon.com:443/DeviceEventProxy/DETLogServlet"

.field static final KEY_COUNTRY_OF_RESIDENCE:Ljava/lang/String; = "countryOfResidence"

.field static final KEY_MARKET_PLACE_ID:Ljava/lang/String; = "MarketplaceID"

.field private static final SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String;

.field private static sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;


# instance fields
.field private countryOfResidence:Ljava/lang/String;

.field private final mAllowWANUpload:Z

.field private final mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

.field private final mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

.field private mCrashDescUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final mCrashDetailAggregator:Lcom/amazon/device/crashmanager/CrashDetailsAggregator;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mDomainChooser:Lcom/amazon/device/utils/det/DomainChooser;

.field private final mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private final mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

.field private final mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

.field private final mUploadCrashBeforeRestart:Z

.field private marketPlaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    .line 88
    sget-object v0, Lcom/amazon/device/utils/det/Domain;->BETA:Lcom/amazon/device/utils/det/Domain;

    const-string v1, "https://det-ta-g7g.integ.amazon.com:443/DeviceEventProxy/DETLogServlet"

    invoke-static {v0, v1}, Lcom/amazon/device/utils/det/DetEndpointConfig;->addEndPoint(Lcom/amazon/device/utils/det/Domain;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/amazon/device/utils/det/Domain;->PROD:Lcom/amazon/device/utils/det/Domain;

    const-string v1, "https://det-ta-g7g.amazon.com:443/DeviceEventProxy/DETLogServlet"

    invoke-static {v0, v1}, Lcom/amazon/device/utils/det/DetEndpointConfig;->addEndPoint(Lcom/amazon/device/utils/det/Domain;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/crashmanager/AppFileArtifactSource;Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/device/utils/det/DomainChooser;Lcom/amazon/device/utils/det/NetworkManager;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Lcom/amazon/device/crashmanager/CrashDetailsAggregator;ZZ)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p4, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    .line 265
    iput-object p5, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    .line 266
    iput-object p3, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 267
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 268
    iput-object p6, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDomainChooser:Lcom/amazon/device/utils/det/DomainChooser;

    .line 269
    iput-object p1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceId:Ljava/lang/String;

    .line 271
    iput-boolean p10, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAllowWANUpload:Z

    .line 272
    iput-boolean p11, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mUploadCrashBeforeRestart:Z

    .line 273
    iput-object p7, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    .line 274
    iput-object p8, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    .line 275
    iput-object p9, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDetailAggregator:Lcom/amazon/device/crashmanager/CrashDetailsAggregator;

    .line 276
    new-instance p1, Lcom/amazon/device/utils/det/NullStatusNotifier;

    invoke-direct {p1}, Lcom/amazon/device/utils/det/NullStatusNotifier;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enableNDKCrashDetection(Landroid/content/Context;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;

    invoke-direct {v0}, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->enableNDKCrash(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/crashmanager/CrashDetectionHelper;
    .locals 2

    .line 247
    sget v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 249
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, android versions before Gingerbread <9 are known to crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_0
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "CrashDetectionHelper.getInstance() called before CrashDetectionHelper.setUpCrashDetection()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    return-object v0
.end method

.method public static setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetectionHelper;
    .locals 6

    if-nez p3, :cond_0

    .line 111
    sget-object p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Could not set up crash detection, context is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    invoke-static {p3}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getDomainChooser(Landroid/content/Context;)Lcom/amazon/device/utils/det/DomainChooser;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/utils/det/DomainChooser;Landroid/content/Context;Z)Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-result-object p0

    return-object p0
.end method

.method public static setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/utils/det/DomainChooser;Landroid/content/Context;Z)Lcom/amazon/device/crashmanager/CrashDetectionHelper;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 141
    invoke-static/range {v0 .. v7}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/utils/det/DomainChooser;Landroid/content/Context;ZZZ)Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-result-object p0

    return-object p0
.end method

.method public static setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/utils/det/DomainChooser;Landroid/content/Context;ZZZ)Lcom/amazon/device/crashmanager/CrashDetectionHelper;
    .locals 15

    move-object/from16 v0, p4

    .line 170
    sget v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 172
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, android versions before Gingerbread < 9 are known to crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    .line 176
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, device type is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    .line 180
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, device id is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    if-nez p2, :cond_3

    .line 184
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, metrics factory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    if-nez v0, :cond_4

    .line 188
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    if-nez p3, :cond_5

    .line 192
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, domainChooser is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 196
    :cond_5
    const-class v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    monitor-enter v1

    .line 197
    :try_start_0
    sget-object v2, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    if-nez v2, :cond_6

    .line 198
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getCrashDetailsAggregator(Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetailsAggregator;

    move-result-object v12

    .line 199
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getCrashDescriptorDedupeUtil(Landroid/content/Context;)Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-result-object v11

    .line 200
    invoke-static {v0, v12, v11}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getAppFileArtifactSource(Landroid/content/Context;Lcom/amazon/device/crashmanager/CrashDetailsAggregator;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    move-result-object v7

    .line 201
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getAmazonPackageLookup(Landroid/content/Context;)Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    move-result-object v8

    .line 202
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/crashmanager/CrashDetectionHelperUtil;->getNetworkManager(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;

    move-result-object v10

    .line 204
    new-instance v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v3 .. v14}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/device/crashmanager/AppFileArtifactSource;Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/device/utils/det/DomainChooser;Lcom/amazon/device/utils/det/NetworkManager;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Lcom/amazon/device/crashmanager/CrashDetailsAggregator;ZZ)V

    sput-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    .line 209
    invoke-virtual {v0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    .line 211
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_8

    .line 214
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    if-nez v0, :cond_7

    .line 215
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Installing crash detector as default exception handler."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 218
    :cond_7
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Crash detector already set up."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_8
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Caller opted out of installing uncaught exception handler."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    return-object v0

    :catchall_0
    move-exception v0

    .line 211
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public appendCrashDetailsCollector(Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDetailAggregator:Lcom/amazon/device/crashmanager/CrashDetailsAggregator;

    if-nez v0, :cond_0

    .line 328
    sget-object p1, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Could not set up additional crash detail collector. Initialize CrashDetectionHelper first."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 331
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/device/crashmanager/CrashDetailsAggregator;->appendCollector(Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    return-void
.end method

.method public caughtException(Ljava/lang/Throwable;)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    sget-object v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->CRASH_TYPE_JAVA_EXCEPTION:Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;

    invoke-virtual {v1}, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;Ljava/lang/String;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    .line 483
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    return-void
.end method

.method public caughtException(Ljava/lang/Throwable;Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/CrashDetectionHelper$CrashTypeCaughtException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;Ljava/lang/String;Lcom/amazon/device/crashmanager/CrashDetailsCollectable;)V

    .line 512
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    return-void
.end method

.method getExtraDeviceInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->countryOfResidence:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "countryOfResidence"

    .line 433
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->marketPlaceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "MarketplaceID"

    .line 437
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public reportCrash(Ljava/lang/Throwable;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-virtual {v0, p1}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    return-void
.end method

.method public setCountryOfResidence(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->countryOfResidence:Ljava/lang/String;

    return-void
.end method

.method public setMarketPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->marketPlaceId:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-virtual {v0, p2}, Lcom/amazon/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;)V

    .line 291
    iget-boolean v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mUploadCrashBeforeRestart:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 298
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 300
    :cond_2
    throw v0
.end method

.method uploadCrashReport()V
    .locals 14

    .line 378
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/NetworkManager;->isEthernetConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAllowWANUpload:Z

    if-nez v0, :cond_0

    .line 379
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Skipping crash report upload. WiFi/Ethernet is not connected AND upload over WAN is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Uploading Crash Report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    const-string v1, "CrashManager"

    const-string/jumbo v2, "uploadCrashEntries"

    .line 386
    invoke-interface {v0, v1, v2}, Lcom/amazon/client/metrics/common/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v1

    .line 390
    :try_start_0
    new-instance v0, Lcom/amazon/device/utils/det/DetUtil;

    invoke-direct {v0}, Lcom/amazon/device/utils/det/DetUtil;-><init>()V

    .line 392
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 393
    iget-object v2, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v9, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAmazonPackageLookup:Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;

    invoke-direct {v9, v2, v1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;-><init>(Lcom/amazon/device/crashmanager/utils/AmazonPackageLookup;Lcom/amazon/client/metrics/common/MetricEvent;)V

    .line 397
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 401
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->getExtraDeviceInfo()Ljava/util/Map;

    move-result-object v11

    .line 402
    new-instance v12, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v2, v12

    move-object v3, v0

    move-object v5, v11

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v12, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v2, v12

    move-object v3, v0

    move-object v5, v11

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v0, Lcom/amazon/device/crashmanager/ArtifactUploader;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDomainChooser:Lcom/amazon/device/utils/det/DomainChooser;

    .line 409
    invoke-interface {v2}, Lcom/amazon/device/utils/det/DomainChooser;->chooseDomain()Lcom/amazon/device/utils/det/Domain;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mDeviceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    iget-object v11, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mStatusNotifier:Lcom/amazon/device/utils/det/StatusNotifier;

    iget-object v12, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/device/utils/det/NetworkManager;

    iget-boolean v13, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mAllowWANUpload:Z

    move-object v2, v0

    move-object v6, v8

    move-object v7, v10

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    invoke-direct/range {v2 .. v11}, Lcom/amazon/device/crashmanager/ArtifactUploader;-><init>(Lcom/amazon/device/utils/det/Domain;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Lcom/amazon/device/utils/det/StatusNotifier;Lcom/amazon/device/utils/det/NetworkManager;Z)V

    .line 419
    sget v2, Lcom/amazon/device/crashmanager/Constants;->THREAD_TAG:I

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ArtifactUploader;->uploadArtifacts(Lcom/amazon/client/metrics/common/MetricEvent;)Lcom/amazon/device/crashmanager/ArtifactUploader$CrashUploadStatistics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 422
    :try_start_1
    sget-object v2, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v3, "Exception thrown while uploading crash entries"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 425
    iget-object v0, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    invoke-interface {v0, v1}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;)V

    return-void

    .line 424
    :goto_1
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 425
    iget-object v2, p0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    invoke-interface {v2, v1}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;)V

    .line 426
    throw v0
.end method

.method public uploadCrashReportAsync()V
    .locals 3

    .line 351
    :try_start_0
    sget-object v0, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper$1;-><init>(Lcom/amazon/device/crashmanager/CrashDetectionHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    sget-object v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to upload crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 362
    sget-object v1, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to upload crash due to failure in accepting the task to execute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
