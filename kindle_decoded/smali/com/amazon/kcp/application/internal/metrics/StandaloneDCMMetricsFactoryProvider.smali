.class public Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;
.super Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
.source "StandaloneDCMMetricsFactoryProvider.java"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private volatile dcmFullyInitialized:Z

.field private final forceAnonymous:Z

.field final oAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->dcmFullyInitialized:Z

    .line 23
    new-instance v0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider$1;-><init>(Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->oAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;

    .line 45
    iput-boolean p1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->forceAnonymous:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->forceAnonymous:Z

    return p0
.end method


# virtual methods
.method protected createMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->applicationContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    return-object p1
.end method

.method public ensureDCMFullyInitialized()V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->dcmFullyInitialized:Z

    if-nez v0, :cond_2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->dcmFullyInitialized:Z

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setPreferredMarketplace(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->oAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;

    invoke-static {v0, v1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setOAuthHelper(Landroid/content/Context;Lcom/amazon/client/metrics/common/transport/OAuthHelper;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->dcmFullyInitialized:Z

    .line 69
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
