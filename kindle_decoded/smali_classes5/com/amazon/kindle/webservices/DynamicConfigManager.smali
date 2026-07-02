.class public Lcom/amazon/kindle/webservices/DynamicConfigManager;
.super Ljava/lang/Object;
.source "DynamicConfigManager.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IDynamicConfigManager;


# static fields
.field private static final KCP_KINDLE_STORE_CONF_KEY:Ljava/lang/String; = "kcpKindleStoreConf"

.field private static final TAG:Ljava/lang/String;

.field private static final defaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gamma:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

.field private static useDynamicConfig:Z

.field private static useGamma:Z


# instance fields
.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useGamma:Z

    .line 86
    sput-boolean v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useDynamicConfig:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static changeCampaignDomain(Ljava/lang/String;)V
    .locals 2

    .line 246
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.rec.prod"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;
    .locals 3

    const-class v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "DynamicConfigManager not initialized, initialize a default manager with no persistence and default domain."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;

    invoke-direct {v1}, Lcom/amazon/kindle/webservices/DynamicConfigManager;-><init>()V

    sput-object v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    .line 105
    sget-object v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    const-string v2, "https://www.amazon.com"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->init(Ljava/lang/String;)V

    .line 107
    :cond_0
    sget-object v1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Lcom/amazon/kindle/persistence/ISecureStorage;Ljava/lang/String;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/DynamicConfigManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    iput-object p0, v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 98
    sget-object p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->instance:Lcom/amazon/kindle/webservices/DynamicConfigManager;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->init(Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 8

    .line 111
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.website"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.website.secure"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.store"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.det"

    const-string v2, "https://det-ta-g7g.amazon.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.firs"

    const-string v2, "https://firs-ta-g7g.amazon.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string v1, "https://cde-ta-g7g.amazon.com"

    const-string/jumbo v2, "url.cde"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v3, "url.todo"

    const-string v4, "https://todo-ta-g7g.amazon.com"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v4, "url.cde.nossl"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string v1, "kcpKindleStoreConf.storeUrl"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v1, "url.rec.prod"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v4, "url.mlt"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v4, "url.font.download"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string v4, "https://api.amazon.com"

    const-string/jumbo v5, "url.mds"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v6, "url.singlecf"

    const-string v7, "https://kindle-digital-delivery.amazon.com"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string v7, "CustomerEmailBaseUrl"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v4, "url.revoke.ownership"

    const-string v7, "https://ebfs-proxy.amazon.com"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v4, "url.annotationMappingProxyService"

    const-string v7, "https://annotation-mapping-proxy-na.amazon.com"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v7, "url.country"

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v0, "url.redirect"

    const-string v7, "amazon.com"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v0, "store.refresh.interval.periodic"

    const-string v7, "86400000"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string v0, "1800000"

    const-string/jumbo v7, "store.refresh.interval.nonetwork"

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v7, "store.refresh.interval.storevisible"

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    const-string/jumbo v7, "store.refresh.offset"

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://cde-ta-g7g-preprod.amazon.com"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://todo-ta-g7g-preprod.amazon.com"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://api-preprod.amazon.com"

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://kindle-digital-delivery-preprod.amazon.com"

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://pre-prod.amazon.com"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    const-string v0, "https://annotation-mapping-proxy-na-preprod.amazon.com"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static isUsingDynamicConfig()Z
    .locals 1

    .line 252
    sget-boolean v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useDynamicConfig:Z

    return v0
.end method

.method public static isUsingGamma()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useGamma:Z

    return v0
.end method

.method private onServerConfigOverridden(Ljava/lang/String;)V
    .locals 3

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5448645e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "url.store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/webservices/StorePathUrlChangedEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/StorePathUrlChangedEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :goto_2
    return-void
.end method

.method public static setUseGamma(Ljava/lang/Boolean;)V
    .locals 1

    .line 236
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useGamma:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearConfigUrls()V
    .locals 3

    .line 225
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    sget-boolean v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->useGamma:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->gamma:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->isUsingDynamicConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz v1, :cond_2

    .line 160
    invoke-interface {v1, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_2
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    sget-object v0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->defaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public loadServerConfigOverrides(Ljava/lang/String;)Z
    .locals 6

    .line 175
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    sget-object p1, Lcom/amazon/kindle/webservices/DynamicConfigManager;->TAG:Ljava/lang/String;

    const-string v0, "Trying to set server config with an empty string, aborting."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/webservices/DynamicConfigParser;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    sget-object v2, Lcom/amazon/kindle/webservices/DynamicConfigManager;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing dynamic config"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->isUsingDynamicConfig()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz p1, :cond_2

    .line 189
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding dynamic config key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    :cond_1
    invoke-direct {p0, v3}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->onServerConfigOverridden(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/amazon/kindle/webservices/DynamicConfigManager;->nvStore:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v4, v3, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
