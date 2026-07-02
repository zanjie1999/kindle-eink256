.class public Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;
.super Ljava/lang/Object;
.source "WeblabManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;
.implements Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;


# static fields
.field private static final DIRECTED_ID_CHANGED:Ljava/lang/String; = "DirectedIdChanged"

.field private static final MARKETPLACE_ID_CHANGED:Ljava/lang/String; = "MarketplaceIdChanged"

.field private static final METRIC_EVENT:Ljava/lang/String; = "WeblabClient"

.field private static final METRIC_SOURCE:Ljava/lang/String; = "WeblabManager"

.field private static final SESSION_ID_CHANGED:Ljava/lang/String; = "SessionIdChanged"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private betaOverrideWeblabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

.field private final configFetcher:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;

.field private final context:Landroid/content/Context;

.field private knownWeblabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

.field private treatmentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->configFetcher:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;

    .line 61
    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->context:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->treatmentCache:Ljava/util/Map;

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->fetchExistingWeblabs()V

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->fetchBetaOverrideWeblabs()V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->attemptClientInitialization()V

    .line 67
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized attemptClientInitialization()V
    .locals 4

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->shouldInitializeClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->configFetcher:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->fetchSessionConfiguration()Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kindle/mobileweblab/WeblabClientFactory;->getClient(Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->updateAsync()Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    :try_start_2
    sget-object v1, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update weblab cache"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fetchBetaOverrideWeblabs()V
    .locals 3

    .line 221
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->betaOverrideWeblabs:Ljava/util/Map;

    const-string v1, "KINDLE_ANDROID_COMIXOLOGY_GV_SETTINGS_348729"

    const-string v2, "T1"

    .line 223
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private fetchExistingWeblabs()V
    .locals 3

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    .line 196
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;

    .line 198
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabConfiguration;->getKnownWeblabs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldInitializeClient()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krxsdk/R$bool;->mobile_weblab_client:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->context:Landroid/content/Context;

    .line 213
    invoke-static {v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->isMobileWeblabDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized updateClient()V
    .locals 5

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->configFetcher:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->fetchSessionConfiguration()Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setSessionId(Ljava/lang/String;)V

    const-string v2, "SessionIdChanged"

    const-string v3, "1"

    .line 170
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getMarketplaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setMarketplaceId(Ljava/lang/String;)V

    const-string v2, "MarketplaceIdChanged"

    const-string v3, "1"

    .line 174
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->setDirectedId(Ljava/lang/String;)V

    const-string v2, "DirectedIdChanged"

    const-string v3, "1"

    .line 178
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->sessionConfig:Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->treatmentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->updateAsync()Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update weblab cache"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v2, "WeblabManager"

    const-string v3, "WeblabClient"

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_1

    .line 190
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->attemptClientInitialization()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addWeblab(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v0, p1, p2}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 76
    :goto_0
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    const-string v0, "Add weblab failed"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 77
    monitor-exit p0

    return p1

    .line 80
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 p1, 0x1

    .line 82
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getExistingWeblabs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->fetchExistingWeblabs()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->betaOverrideWeblabs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->betaOverrideWeblabs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-object v0

    .line 100
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->client:Lcom/amazon/weblab/mobile/IMobileWeblabClient;

    invoke-interface {v1, p1}, Lcom/amazon/weblab/mobile/IMobileWeblabClient;->getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;

    move-result-object p1

    .line 103
    new-instance v1, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;

    invoke-direct {v1, p1, p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;-><init>(Lcom/amazon/weblab/mobile/IMobileWeblab;Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    const-string v2, "Get weblab failed"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->knownWeblabs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 114
    sget-object p1, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->TAG:Ljava/lang/String;

    const-string v1, "Get weblab returning null"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-eq v0, v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->updateClient()V

    :cond_1
    return-void
.end method

.method public onPFMChanged(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 131
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne p1, v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->updateClient()V

    :cond_0
    return-void
.end method

.method public treatmentDidTriggerForWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->treatmentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->treatmentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->treatmentCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
