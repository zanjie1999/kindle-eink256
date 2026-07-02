.class public final Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;
.super Ljava/lang/Object;
.source "NetworkEndpointsUrl.java"

# interfaces
.implements Lcom/audible/pfm/endpoint/INetworkEndpoints;


# static fields
.field private static final BUY_URL_TYPE:Ljava/lang/String; = "buy_url"

.field private static final COMPANION_MAPPING_ASIN_PAIR_URL:Ljava/lang/String; = "companion_mapping_asin_pair_url"

.field private static final COMPANION_MAPPING_FULL_URL_TYPE:Ljava/lang/String; = "companion_mapping_full_url"

.field private static final COMPANION_MAPPING_PAGING_URL:Ljava/lang/String; = "companion_mapping_paging_url"

.field private static final COMPANION_MAPPING_PARTIAL_URL_TYPE:Ljava/lang/String; = "companion_mapping_partial_url"

.field private static final CUSTOMER_STATUS_URL:Ljava/lang/String; = "customer_status_url"

.field private static final IS_AMAZON_ASIN_REQUESTED:Z = true

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PRICE_RESPONSE_GROUP:Ljava/lang/String; = "price"

.field private static final PRICE_URL_TYPE:Ljava/lang/String; = "price_url"

.field private static final STATS_URL:Ljava/lang/String; = "audible_listening_stat_api_url"

.field private static final SYNC_FILE_ACR_URL:Ljava/lang/String; = "sync_file_acr_url"


# instance fields
.field private final endpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pfmConfig:Lcom/audible/pfm/domain/PfmConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/pfm/domain/PfmConfig;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pfmConfig cannot be null"

    .line 95
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->pfmConfig:Lcom/audible/pfm/domain/PfmConfig;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Lcom/audible/pfm/domain/PfmConfig;->getEndpoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/audible/pfm/domain/PfmConfig;->getEndpoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/Endpoint;

    .line 100
    invoke-virtual {v0}, Lcom/audible/pfm/domain/Endpoint;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/audible/pfm/domain/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/audible/pfm/domain/Endpoint;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/audible/pfm/domain/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCompanionMappingFullDataPath()Ljava/net/URL;
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "companion_mapping_full_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 163
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCompanionMappingPartialDataPath(J)Ljava/net/URL;
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "companion_mapping_partial_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 172
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 180
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBuyDataPath()Ljava/net/URL;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "buy_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getCompanionMappingAsinPairEndpoint()Ljava/net/URL;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "companion_mapping_asin_pair_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getCompanionMappingDataPath(J)Ljava/net/URL;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getCompanionMappingFullDataPath()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getCompanionMappingPartialDataPath(J)Ljava/net/URL;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCompanionMappingPagingEndpoint()Ljava/net/URL;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "companion_mapping_paging_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerStatusEndpoint()Ljava/net/URL;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "customer_status_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getPriceDataPath(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "price_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 118
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "price"

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatsEndpoint()Ljava/net/URL;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "audible_listening_stat_api_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getSyncFileAcrEndpoint()Ljava/net/URL;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->endpoints:Ljava/util/Map;

    const-string v1, "sync_file_acr_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
