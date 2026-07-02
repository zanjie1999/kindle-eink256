.class public Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;
.super Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;
.source "AndroidMetricsFactoryImpl.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/MetricsFactory;
    .locals 2

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    invoke-direct {v1, p0}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 118
    :cond_0
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;
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

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->setDeviceSerialNumber(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeviceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->setDeviceType(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V
    .locals 1

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->setMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOAuthHelper(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    .locals 1

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->setOAuthHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPreferredMarketplace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->setPreferredMarketplace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected getService()Lcom/amazon/client/metrics/thirdparty/IMetricsService;
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getMetricsService()Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    move-result-object v0

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    .line 126
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/client/metrics/thirdparty/IMetricsService;

    return-object v0
.end method

.method protected shouldRecordMetrics()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
