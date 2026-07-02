.class public final Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;
.super Ljava/lang/Object;
.source "CrashDetectionHelper.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final ANDROID_API_VERSION:I

.field private static final MAX_CACHE_CAPACITY:I = 0x32

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "CrashDetectionHelper.crashManager"

.field private static final SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String;

.field private static sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;


# instance fields
.field private final mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

.field private final mAppFileArtifactSource:Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

.field private mCrashDescUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

.field private final mCrashDetailAggregator:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mDomainChooser:Lcom/amazon/whispersync/device/crashmanager/DomainChooser;

.field private final mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

.field private final mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

.field private final mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

.field private final mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/device/utils/OAuthHelper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;Lcom/amazon/whispersync/device/crashmanager/DomainChooser;Lcom/amazon/whispersync/device/utils/NetworkManager;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p5, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    .line 212
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

    .line 213
    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    .line 214
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 215
    new-instance p4, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;

    invoke-direct {p4, p3}, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;-><init>(Lcom/amazon/whispersync/device/utils/OAuthHelper;)V

    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

    .line 216
    iput-object p7, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDomainChooser:Lcom/amazon/whispersync/device/crashmanager/DomainChooser;

    .line 217
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceId:Ljava/lang/String;

    .line 219
    iput-object p8, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    .line 220
    iput-object p9, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    .line 221
    iput-object p10, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mCrashDetailAggregator:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;

    .line 223
    new-instance p1, Lcom/amazon/whispersync/device/utils/NullStatusNotifier;

    invoke-direct {p1}, Lcom/amazon/whispersync/device/utils/NullStatusNotifier;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;
    .locals 2

    .line 196
    sget v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 198
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, android versions before Gingerbread <9 are known to crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    if-nez v0, :cond_1

    .line 202
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "CrashDetectionHelper.getInstance() called before CrashDetectionHelper.setUpCrashDetection()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    return-object v0
.end method

.method public static setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/device/utils/OAuthHelper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;Landroid/content/Context;)Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;
    .locals 7

    if-nez p4, :cond_0

    .line 87
    sget-object p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Could not set up crash detection, context is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    new-instance v4, Lcom/amazon/whispersync/device/crashmanager/ThirdPartyDomainChooser;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/whispersync/device/crashmanager/ThirdPartyDomainChooser;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 91
    invoke-static/range {v0 .. v6}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/device/utils/OAuthHelper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;Lcom/amazon/whispersync/device/crashmanager/DomainChooser;Landroid/content/Context;Z)Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    move-result-object p0

    return-object p0
.end method

.method public static setUpCrashDetection(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/device/utils/OAuthHelper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;Lcom/amazon/whispersync/device/crashmanager/DomainChooser;Landroid/content/Context;Z)Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;
    .locals 14

    move-object/from16 v0, p5

    .line 117
    sget v1, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->ANDROID_API_VERSION:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 119
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, android versions before Gingerbread <9 are known to crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    .line 123
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, device type is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    .line 127
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, device id is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    if-nez p2, :cond_3

    .line 131
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, oauth helper is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    if-nez p3, :cond_4

    .line 135
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, metrics factory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    if-nez v0, :cond_5

    .line 139
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not set up crash detection, context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 143
    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not set up crash detection, domainChooser is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6
    const-class v1, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    if-nez v2, :cond_7

    .line 148
    new-instance v13, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;

    invoke-direct {v13}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;-><init>()V

    .line 150
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollector;

    invoke-direct {v2, v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollector;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v13, v2}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->appendCollector(Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V

    .line 153
    new-instance v8, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    invoke-direct {v8, v0, v13}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V

    .line 155
    new-instance v9, Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

    invoke-direct {v9, v0}, Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-static/range {p5 .. p5}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v11

    const-string v2, "CrashDetectionHelper.crashManager"

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    new-instance v12, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    const/16 v2, 0x32

    const-wide/32 v3, 0x5265c00

    invoke-direct {v12, v0, v2, v3, v4}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;-><init>(Landroid/content/SharedPreferences;IJ)V

    .line 166
    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v13}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/device/utils/OAuthHelper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;Lcom/amazon/whispersync/device/crashmanager/DomainChooser;Lcom/amazon/whispersync/device/utils/NetworkManager;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    .line 171
    invoke-virtual {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    .line 173
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_9

    .line 176
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    if-nez v0, :cond_8

    .line 177
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Installing crash detector as default exception handler."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 180
    :cond_8
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Crash detector already set up."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_9
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Caller opted out of installing uncaught exception handler."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->sCrashDetectionHelper:Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;

    return-object v0

    :catchall_0
    move-exception v0

    .line 173
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public appendCrashDetailsCollector(Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mCrashDetailAggregator:Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;

    if-nez v0, :cond_0

    .line 274
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Could not set up additional crash detail collector. Initialize CrashDetectionHelper first."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/device/crashmanager/CrashDetailsAggregator;->appendCollector(Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;)V

    return-void
.end method

.method public reportCrash(Ljava/lang/Throwable;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;)V

    .line 370
    invoke-virtual {p0}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->uploadCrashReportAsync()V

    return-void
.end method

.method public setOAuthHelper(Lcom/amazon/whispersync/device/utils/OAuthHelper;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;-><init>(Lcom/amazon/whispersync/device/utils/OAuthHelper;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;->saveCrash(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 242
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    throw v0
.end method

.method uploadCrashReport()V
    .locals 13

    .line 313
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Skipping crash report upload. WiFi is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    const-string v1, "CrashManager"

    const-string/jumbo v2, "uploadCrashEntries"

    invoke-interface {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    .line 323
    :try_start_0
    new-instance v2, Lcom/amazon/whispersync/device/utils/DetUtil;

    invoke-direct {v2}, Lcom/amazon/whispersync/device/utils/DetUtil;-><init>()V

    .line 325
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAppFileArtifactSource:Lcom/amazon/whispersync/device/crashmanager/AppFileArtifactSource;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v6, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mAmazonPackageLookup:Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;

    invoke-direct {v6, v1, v0}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;-><init>(Lcom/amazon/whispersync/device/crashmanager/AmazonPackageLookup;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    .line 330
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    .line 335
    new-instance v10, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;

    iget-object v3, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDomainChooser:Lcom/amazon/whispersync/device/crashmanager/DomainChooser;

    invoke-interface {v2}, Lcom/amazon/whispersync/device/crashmanager/DomainChooser;->chooseDomain()Lcom/amazon/whispersync/device/crashmanager/Domain;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/device/crashmanager/DetEndpointConfig;->getServiceEndpoint(Lcom/amazon/whispersync/device/crashmanager/Domain;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceType:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mCrashDescUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    iget-object v10, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    iget-object v11, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

    iget-object v12, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-object v3, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v2

    invoke-direct/range {v3 .. v12}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;-><init>(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;Lcom/amazon/whispersync/device/utils/StatusNotifier;Lcom/amazon/whispersync/communication/authentication/RequestSigner;Lcom/amazon/whispersync/device/utils/NetworkManager;)V

    .line 350
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->uploadArtifacts(Lcom/amazon/whispersync/client/metrics/MetricEvent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 354
    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {v2, v0}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    throw v1

    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-void
.end method

.method public uploadCrashReportAsync()V
    .locals 2

    .line 291
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper$1;-><init>(Lcom/amazon/whispersync/device/crashmanager/CrashDetectionHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
