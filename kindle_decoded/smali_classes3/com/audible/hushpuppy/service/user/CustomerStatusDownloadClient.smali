.class public final Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;
.super Ljava/lang/Object;
.source "CustomerStatusDownloadClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/user/ICustomerStatusDownloadClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://api.audible.com/1.0/"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROSPECT_GROUP_NAME:Ljava/lang/String; = "prospect_benefits_status"

.field private static final RESPONSE_GROUP:Ljava/lang/String; = "response_groups"


# instance fields
.field private final downloadClient:Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;

.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kindleReaderSdk can\'t be null."

    .line 105
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p1, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "endpointFactory can\'t be null."

    .line 106
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/pfm/endpoint/IEndpointFactory;

    iput-object p3, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    const-string p1, "identityManager can\'t be null."

    .line 107
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p2, p4}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->createOkHttpClientBuilder(Lcom/audible/mobile/identity/IdentityManager;Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 111
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->createGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->createRetrofitBuilder(Lokhttp3/OkHttpClient$Builder;Lcom/google/gson/GsonBuilder;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 115
    const-class p2, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;

    iput-object p1, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->downloadClient:Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V
    .locals 1

    .line 98
    invoke-static {p1}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->getIdentityManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/mobile/identity/IdentityManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/pfm/endpoint/IEndpointFactory;Z)V

    return-void
.end method

.method private createGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 3

    .line 183
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 184
    const-class v1, Lcom/audible/mobile/domain/Asin;

    new-instance v2, Lcom/audible/relationship/network/gson/AsinTypeAdapter;

    invoke-direct {v2}, Lcom/audible/relationship/network/gson/AsinTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 185
    const-class v1, Lcom/audible/mobile/domain/ACR;

    new-instance v2, Lcom/audible/relationship/network/gson/AcrTypeAdapter;

    invoke-direct {v2}, Lcom/audible/relationship/network/gson/AcrTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-object v0
.end method

.method private createOkHttpClientBuilder(Lcom/audible/mobile/identity/IdentityManager;Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 167
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 168
    new-instance v1, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;

    invoke-direct {v1, p1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-virtual {v1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p2, :cond_0

    .line 171
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p1, p2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 172
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->forceProxy(Lokhttp3/OkHttpClient$Builder;)V

    :cond_0
    return-object v0
.end method

.method private createRetrofitBuilder(Lokhttp3/OkHttpClient$Builder;Lcom/google/gson/GsonBuilder;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 195
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 196
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 197
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    const-string p1, "https://api.audible.com/1.0/"

    .line 198
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method private forceProxy(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 214
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    const-string v1, "https://api.audible.com/1.0/"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 218
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v2, v1, :cond_0

    .line 219
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-void
.end method

.method private getEndpoint()Ljava/lang/String;
    .locals 7

    .line 231
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->getUserPfm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Failed to get user PFM!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v2, v0}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v2

    if-nez v2, :cond_1

    .line 239
    sget-object v2, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get network endpoint for PFM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 243
    :cond_1
    invoke-interface {v2}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getCustomerStatusEndpoint()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    .line 245
    sget-object v0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Endpoint is null!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 248
    :cond_2
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIdentityManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/mobile/identity/IdentityManager;
    .locals 1

    const-string v0, "kindleReaderSdk can\'t be null."

    .line 156
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p0

    const-class v0, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/identity/IdentityManager;

    return-object p0
.end method

.method private getUserPfm()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCustomerToaEligibility()Lcom/audible/hushpuppy/service/user/CustomerStatus;
    .locals 7

    .line 122
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Failed to get customer status endpoint! Returning null CustomerStatus."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->downloadClient:Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;

    const-string v3, "prospect_benefits_status"

    invoke-interface {v2, v0, v3}, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient$ICustomerStatusDownloader;->getCustomerStatusForBenefitsStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v4, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->TOA:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    const-string v5, "requestCustomerProspectBenefit - start!"

    invoke-interface {v3, v4, v0, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaEligibility:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 133
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->ToaEligibilityTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-virtual {v0, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 134
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->ToaEligibilityTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 136
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaEligibilitySuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 138
    sget-object v2, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "requestCustomerProspectBenefit - success!"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/user/CustomerStatus;

    return-object v0

    .line 141
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaEligibilityError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v2, v3, v4, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 142
    sget-object v2, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCustomerProspectBenefit - failed! HTTP status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaEligibilityException:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v2, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 146
    sget-object v2, Lcom/audible/hushpuppy/service/user/CustomerStatusDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "requestCustomerProspectBenefit - failed! IOException while executing."

    invoke-interface {v2, v3, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method
