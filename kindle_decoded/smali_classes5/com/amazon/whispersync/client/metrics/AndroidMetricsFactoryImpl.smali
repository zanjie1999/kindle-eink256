.class public Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;
.super Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;
.source "AndroidMetricsFactoryImpl.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/MetricsFactory;
    .locals 2

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    .line 91
    :cond_0
    sget-object p0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->setDeviceSerialNumber(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeviceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->setDeviceType(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMetricsConfiguration(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->setMetricsConfiguration(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOAuthHelper(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized shutdown(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected getService()Lcom/amazon/whispersync/client/metrics/IMetricsService;
    .locals 1

    .line 96
    sget-object v0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/GenericMetricsServiceAdapter;->getMetricsService()Lcom/amazon/whispersync/client/metrics/IMetricsService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    .line 99
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/whispersync/client/metrics/IMetricsService;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected shouldRecordMetrics()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
