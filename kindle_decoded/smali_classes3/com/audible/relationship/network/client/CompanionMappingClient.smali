.class public final Lcom/audible/relationship/network/client/CompanionMappingClient;
.super Ljava/lang/Object;
.source "CompanionMappingClient.java"

# interfaces
.implements Lcom/audible/relationship/network/client/ICompanionMappingClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/relationship/network/client/CompanionMappingClient$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://syncdelivery.audible.com/hp/"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAX_ASIN_PAIRS:I = 0x68a


# instance fields
.field private final downloadClient:Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/network/client/CompanionMappingClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V
    .locals 1

    const-string v0, "context can\'t be null."

    .line 117
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class v0, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/audible/relationship/network/client/CompanionMappingClient;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identityManager can\'t be null."

    .line 131
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "endpointFactory can\'t be null."

    .line 132
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/pfm/endpoint/IEndpointFactory;

    iput-object p2, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/audible/relationship/network/client/CompanionMappingClient;->createOkHttpClientBuilder(Lcom/audible/mobile/identity/IdentityManager;Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 135
    invoke-direct {p0}, Lcom/audible/relationship/network/client/CompanionMappingClient;->createGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->createRetrofitBuilder(Lokhttp3/OkHttpClient$Builder;Lcom/google/gson/GsonBuilder;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 139
    const-class p2, Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    iput-object p1, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->downloadClient:Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    return-void
.end method

.method private createGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 3

    .line 319
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 320
    const-class v1, Lcom/audible/mobile/domain/Asin;

    new-instance v2, Lcom/audible/relationship/network/gson/AsinTypeAdapter;

    invoke-direct {v2}, Lcom/audible/relationship/network/gson/AsinTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 321
    const-class v1, Lcom/audible/mobile/domain/ACR;

    new-instance v2, Lcom/audible/relationship/network/gson/AcrTypeAdapter;

    invoke-direct {v2}, Lcom/audible/relationship/network/gson/AcrTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-object v0
.end method

.method private createOkHttpClientBuilder(Lcom/audible/mobile/identity/IdentityManager;Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 303
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 304
    new-instance v1, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;

    invoke-direct {v1, p1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-virtual {v1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p2, :cond_0

    .line 307
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p1, p2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 308
    invoke-direct {p0, v0}, Lcom/audible/relationship/network/client/CompanionMappingClient;->forceProxy(Lokhttp3/OkHttpClient$Builder;)V

    :cond_0
    return-object v0
.end method

.method private createRetrofitBuilder(Lokhttp3/OkHttpClient$Builder;Lcom/google/gson/GsonBuilder;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 331
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 332
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 333
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    const-string p1, "https://syncdelivery.audible.com/hp/"

    .line 334
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method private forceProxy(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 350
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    const-string v1, "https://syncdelivery.audible.com/hp/"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 354
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v2, v1, :cond_0

    .line 355
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-void
.end method

.method private getEndpoint(Lcom/audible/relationship/network/client/CompanionMappingClient$Type;)Ljava/lang/String;
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v0}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getCurrentPfmEndpoints()Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 366
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Network endpoints is null! Failed to get endpoint."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 371
    :cond_0
    sget-object v2, Lcom/audible/relationship/network/client/CompanionMappingClient$1;->$SwitchMap$com$audible$relationship$network$client$CompanionMappingClient$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 379
    :cond_1
    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getSyncFileAcrEndpoint()Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getCompanionMappingAsinPairEndpoint()Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_3
    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getCompanionMappingPagingEndpoint()Ljava/net/URL;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 386
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " endpoint is null! Failed to get endpoint."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 389
    :cond_4
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V
    .locals 1

    .line 394
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method public getSyncFileAcr(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Lcom/audible/mobile/domain/ACR;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 268
    :cond_0
    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->SYNC_FILE_ACR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    invoke-direct {p0, v1}, Lcom/audible/relationship/network/client/CompanionMappingClient;->getEndpoint(Lcom/audible/relationship/network/client/CompanionMappingClient$Type;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 270
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Failed to get ASIN pair endpoint! Returning null RelationshipMapping."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->downloadClient:Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/audible/relationship/network/ICompanionMappingDownloadClient;->getSyncFileAcr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 276
    sget-object v2, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v3, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->SYNC_FILE_ACR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    invoke-interface {v1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CM Module - Making n/w call to fetch sync file acr"

    invoke-interface {v2, v3, v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_SyncFileAcrNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v2, v3}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 278
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_RequestSyncFileAcr_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 279
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 280
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_RequestSyncFileAcr_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 282
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 283
    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to request sync file ACR with ebookAsin = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ebookGuid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", audiobookAsin = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", audiobookFormat = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 283
    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 285
    sget-object p1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_SyncFileAcrNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p1, p2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    return-object v0

    .line 289
    :cond_2
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_SyncFileAcrNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 290
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/domain/SyncMapping;

    .line 291
    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Request sync file ACR with [ebookAsin:ebookGuid:abookAcr] = [%s:%s:%s:%s] - success!"

    invoke-interface {v1, p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Sync Mapping = %s"

    invoke-interface {p1, p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0}, Lcom/audible/relationship/domain/SyncMapping;->getSyncFileAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    return-object p1

    .line 264
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Ebook asin or guid or audiobook asin or format is null. Returning null"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0
.end method

.method public requestFullCompanionMapping(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->PAGING:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    invoke-direct {p0, v0}, Lcom/audible/relationship/network/client/CompanionMappingClient;->getEndpoint(Lcom/audible/relationship/network/client/CompanionMappingClient$Type;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Failed to get paging endpoint! Returning null RelationshipMapping."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->downloadClient:Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    invoke-interface {v2, v0, p1}, Lcom/audible/relationship/network/ICompanionMappingDownloadClient;->getFullCompanionMapping(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 155
    sget-object v2, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v3, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->PAGING:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CM Module - Making pagination call"

    invoke-interface {v2, v3, v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v2, v3}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 157
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_PaginationNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 159
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_PaginationNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 163
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 165
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to request full companion mapping with token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 169
    :cond_1
    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v1, v2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 170
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/domain/RelationshipMapping;

    .line 172
    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Request full companion with token %s - success!"

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "RelationshipMapping = %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public requestMappingForAsinPairs(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "asinPairs is null or empty! Returning null RelationshipMapping"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x68a

    if-lt v0, v4, :cond_1

    .line 189
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "requestMappingForAsinPairs - pair list size: %s greater than max: %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairLimitExceeded:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v4}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 193
    :cond_1
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient$Type;->ASIN_PAIR:Lcom/audible/relationship/network/client/CompanionMappingClient$Type;

    invoke-direct {p0, v0}, Lcom/audible/relationship/network/client/CompanionMappingClient;->getEndpoint(Lcom/audible/relationship/network/client/CompanionMappingClient$Type;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 195
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Failed to get ASIN pair endpoint! Returning null RelationshipMapping."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/audible/relationship/network/client/CompanionMappingClient;->downloadClient:Lcom/audible/relationship/network/ICompanionMappingDownloadClient;

    invoke-interface {v4, v0, p1}, Lcom/audible/relationship/network/ICompanionMappingDownloadClient;->getCompanionMappingForAsinPairs(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 201
    sget-object v4, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v5, Lcom/audible/relationship/logging/RelationshipNetworkCategory;->ASIN_PAIR:Lcom/audible/relationship/logging/RelationshipNetworkCategory;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CM Module - Making asin pair call"

    invoke-interface {v4, v5, v6, v7}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->NETWORK_CALL:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v4, v5}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 203
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v4

    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_AsinPairNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v4, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 205
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v4

    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_AsinPairNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v4, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 209
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_3

    .line 210
    sget-object v0, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to request companion mapping with ASIN pairs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 211
    sget-object p1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p1, v0}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    return-object v1

    .line 215
    :cond_3
    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v1, v2}, Lcom/audible/relationship/network/client/CompanionMappingClient;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 216
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/domain/RelationshipMapping;

    .line 218
    sget-object v1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Request ASIN pair companion with ASIN pairs %s - success!"

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    sget-object p1, Lcom/audible/relationship/network/client/CompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "RelationshipMapping = %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
