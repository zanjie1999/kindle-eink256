.class public Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;
.super Ljava/lang/Object;
.source "GenericMetricsServiceAdapter.java"


# static fields
.field private static final SHUTDOWN_TIMEOUT_MS:J = 0x1d4c0L

.field private static final THREAD_NAME:Ljava/lang/String; = "MetricsService"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;

.field private static sGenericMetricsServiceAdapter:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

.field private static sMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;


# instance fields
.field private final mBinder:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

.field private final mHandler:Landroid/os/Handler;

.field private final mMainThread:Landroid/os/HandlerThread;

.field private final mMetricsService:Lcom/amazon/client/metrics/thirdparty/MetricsService;

.field private final mMetricsServiceFactory:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "MetricsServiceAdapter"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$2;-><init>(Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mBinder:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    .line 56
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initialize"

    const-string v3, "initialize(context) - Metrics service"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MetricsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$1;

    invoke-direct {v2, p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$1;-><init>(Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mHandler:Landroid/os/Handler;

    .line 68
    :try_start_0
    new-instance v0, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    invoke-direct {v0, p1}, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    .line 69
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    sget-object v2, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;-><init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createMetricsService()Lcom/amazon/client/metrics/thirdparty/MetricsService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/client/metrics/thirdparty/MetricsService;

    return-void

    :catch_0
    move-exception p1

    .line 71
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->shutdown()V

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/amazon/dp/logger/DPLogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;
    .locals 1

    .line 185
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    .line 188
    :cond_0
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    return-object p0
.end method

.method public static setMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V
    .locals 0

    .line 250
    sput-object p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    return-void
.end method

.method private shutdown()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->shutdown()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/client/metrics/thirdparty/MetricsService;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/MetricsService;->shutdown()V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string/jumbo v2, "shutdown"

    if-nez v0, :cond_2

    .line 88
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "HandlerThread is null - nothing to do in shutdown."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4}, Landroid/os/HandlerThread;->join(J)V

    .line 96
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v3, "(super) Shutting down..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System service shutdown failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMetricsService()Lcom/amazon/client/metrics/thirdparty/IMetricsService;
    .locals 1

    .line 257
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mBinder:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    return-object v0
.end method

.method protected handleMessageForService(Landroid/os/Message;)Z
    .locals 4

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/amazon/client/metrics/thirdparty/MetricEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/client/metrics/thirdparty/MetricsService;

    if-eqz v0, :cond_0

    .line 129
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/Priority;->fromInt(I)Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v0

    .line 130
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/amazon/client/metrics/thirdparty/Channel;->fromInt(I)Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v1

    .line 131
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/MetricEntry;

    .line 132
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/client/metrics/thirdparty/MetricsService;

    invoke-virtual {v2, p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricsService;->record(Lcom/amazon/client/metrics/thirdparty/MetricEntry;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    const/4 p1, 0x1

    return p1

    .line 135
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown android.os.Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleMessageForService"

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->setDeviceSerialNumber(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceId must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->setDeviceType(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceType must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOAuthHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->setOAuthHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V

    return-void
.end method

.method public setPreferredMarketplace(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/device/utils/thirdparty/CustomDeviceUtil;->setPreferredMarketplace(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "preferredMarketplace must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
