.class public Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;
.super Ljava/lang/Object;
.source "GenericMetricsServiceAdapter.java"


# static fields
.field private static final SHUTDOWN_TIMEOUT_MS:J = 0x1d4c0L

.field private static final THREAD_NAME:Ljava/lang/String; = "MetricsService"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;

.field private static sGenericMetricsServiceAdapter:Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

.field private static sMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;


# instance fields
.field private final mBinder:Lcom/amazon/whispersync/client/metrics/IMetricsService;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceUtil:Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

.field private final mHandler:Landroid/os/Handler;

.field private final mMainThread:Landroid/os/HandlerThread;

.field private final mMetricsService:Lcom/amazon/whispersync/client/metrics/MetricsService;

.field private final mMetricsServiceFactory:Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "MetricsServiceAdapter"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter$2;-><init>(Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mBinder:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    .line 57
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initialize"

    const-string v3, "initialize(context) - Metrics service"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MetricsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter$1;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter$1;-><init>(Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mHandler:Landroid/os/Handler;

    .line 69
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

    invoke-direct {v0}, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

    .line 70
    new-instance v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

    sget-object v2, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;
    :try_end_0
    .catch Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createMetricsService()Lcom/amazon/whispersync/client/metrics/MetricsService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/whispersync/client/metrics/MetricsService;

    return-void

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    .line 171
    :cond_0
    sget-object p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    return-object p0
.end method

.method public static setMetricsConfiguration(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V
    .locals 0

    .line 205
    sput-object p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getMainThread()Landroid/os/HandlerThread;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getMetricsService()Lcom/amazon/whispersync/client/metrics/IMetricsService;
    .locals 1

    .line 212
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->sGenericMetricsServiceAdapter:Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    iget-object v0, v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mBinder:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    return-object v0
.end method

.method protected handleMessageForService(Landroid/os/Message;)Z
    .locals 4

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/amazon/whispersync/client/metrics/MetricEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/whispersync/client/metrics/MetricsService;

    if-eqz v0, :cond_0

    .line 125
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/Priority;->fromInt(I)Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v0

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whispersync/client/metrics/MetricEntry;

    .line 127
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/whispersync/client/metrics/MetricsService;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricsService;->record(Lcom/amazon/whispersync/client/metrics/Priority;Lcom/amazon/whispersync/client/metrics/MetricEntry;)V

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    invoke-virtual {v0, v3, p1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mBinder:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->setDeviceSerialNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/device/utils/CustomDeviceUtil;->setDeviceType(Ljava/lang/String;)V

    return-void
.end method

.method public setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsServiceFactory:Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->shutdown()V

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMetricsService:Lcom/amazon/whispersync/client/metrics/MetricsService;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/MetricsService;->shutdown()V

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string/jumbo v2, "shutdown"

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "HandlerThread is null - nothing to do in shutdown."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->mMainThread:Landroid/os/HandlerThread;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4}, Landroid/os/HandlerThread;->join(J)V

    .line 92
    sget-object v0, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "(super) Shutting down..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System service shutdown failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
