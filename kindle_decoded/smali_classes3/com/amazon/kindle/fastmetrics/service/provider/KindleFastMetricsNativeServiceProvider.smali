.class public Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;
.super Ljava/lang/Object;
.source "KindleFastMetricsNativeServiceProvider.java"


# static fields
.field private static final DISK_CACHE_SIZE:J = 0xf4240L

.field private static final FLUSH_PERIOD_SECONDS:J = 0x0L

.field private static final MAX_FLUSH_SIZE:J = 0x30d40L

.field private static final TAG:Ljava/lang/String; = "NativeServiceProvider"

.field private static final service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;


# instance fields
.field private iKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final mNativeService:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "KindleSDKFastMetricsJNI"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const/4 v1, 0x0

    const-string v2, "NativeServiceProvider"

    const-string v3, "Error loading the FastMetrics native library."

    .line 38
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 40
    :goto_1
    sput-object v0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/FastMetricsPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->iKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 49
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    invoke-direct {p0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getDeviceFamily()Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;-><init>(Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;)V

    const-wide/32 v1, 0xf4240

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->setDiskCacheSize(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    move-result-object v0

    const-wide/32 v1, 0x30d40

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->setMaximumFlushSize(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->setFlushPeriod(J)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->setIsDebug(Z)Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher$Builder;->build()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->mNativeService:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    .line 57
    new-instance v1, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/fastmetrics/service/provider/SushiPublisher;-><init>(Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getDeviceFamily()Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->iKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->FirstPartyAndroid:Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    return-object v0

    .line 89
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFE:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->ThirdPartyAndroid:Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    return-object v0

    .line 91
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;->FirstPartyAndroid:Lcom/amazon/kindle/fastmetrics/jni/DeviceFamily;

    return-object v0
.end method

.method protected static getInstance()Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->service:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    return-object v0
.end method


# virtual methods
.method protected getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->mNativeService:Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    return-object v0
.end method
