.class public final Lcom/audible/pfm/network/PfmDownloadClient;
.super Ljava/lang/Object;
.source "PfmDownloadClient.java"

# interfaces
.implements Lcom/audible/pfm/network/IPfmDownloadClient;


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://d1yprpojhqvser.cloudfront.net/"

.field private static final HTTP_NOT_MODIFIED_STATUS_CODE:I = 0x130

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final TIMEOUT_MILLIS:J


# instance fields
.field private pfmEndpoint:Lcom/audible/pfm/network/IPfmEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/network/PfmDownloadClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/pfm/network/PfmDownloadClient;->TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0, v0}, Lcom/audible/pfm/network/PfmDownloadClient;-><init>(ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JZZLjava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 85
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 p2, 0x0

    .line 88
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p6, :cond_0

    .line 90
    new-instance p2, Lokhttp3/Dispatcher;

    invoke-direct {p2, p6}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 95
    invoke-direct {p0, v0}, Lcom/audible/pfm/network/PfmDownloadClient;->configureHttpLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/audible/pfm/network/PfmDownloadClient;->forceProxy(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;)V

    .line 103
    :cond_2
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 104
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 105
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 106
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 108
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 111
    const-class p2, Lcom/audible/pfm/network/IPfmEndpoint;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/network/IPfmEndpoint;

    iput-object p1, p0, Lcom/audible/pfm/network/PfmDownloadClient;->pfmEndpoint:Lcom/audible/pfm/network/IPfmEndpoint;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 7

    .line 67
    sget-wide v2, Lcom/audible/pfm/network/PfmDownloadClient;->TIMEOUT_MILLIS:J

    const-string v1, "https://d1yprpojhqvser.cloudfront.net/"

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/audible/pfm/network/PfmDownloadClient;-><init>(Ljava/lang/String;JZZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private configureHttpLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    .line 231
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 232
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 234
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private forceProxy(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;)V
    .locals 2

    .line 250
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 252
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    .line 254
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 256
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v1, v0, :cond_0

    .line 257
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    return-void
.end method

.method private getFormattedDate(J)Ljava/lang/String;
    .locals 1

    .line 280
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getResult(Lretrofit2/Response;Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p2, v0}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 267
    sget-object p2, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Request was successful"

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    .line 270
    sget-object p1, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR_304:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p2, p1}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 271
    sget-object p1, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Request was not modified"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error requesting for PFM file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V
    .locals 1

    .line 285
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method public getEndpointConfigSyncForce()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Making Pfm network call"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/audible/pfm/network/PfmDownloadClient;->pfmEndpoint:Lcom/audible/pfm/network/IPfmEndpoint;

    invoke-interface {v0}, Lcom/audible/pfm/network/IPfmEndpoint;->getHushpuppyEndpointConfig()Lretrofit2/Call;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ForceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->NetworkCall:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v1, v2}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 127
    sget-object v1, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v2, Lcom/audible/pfm/logging/PfmNetworkCategory;->PFM:Lcom/audible/pfm/logging/PfmNetworkCategory;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PFM-UPDATE - Making PFM force request via Retrofit"

    invoke-interface {v1, v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ForceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 131
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ForceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 133
    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ForceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    invoke-direct {p0, v0, v1}, Lcom/audible/pfm/network/PfmDownloadClient;->getResult(Lretrofit2/Response;Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ForceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    sget-object v2, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v1, v2}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 137
    throw v0
.end method

.method public getEndpointConfigSyncNonForce(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/audible/pfm/network/PfmDownloadClient;->getFormattedDate(J)Ljava/lang/String;

    move-result-object p1

    .line 153
    sget-object p2, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making Pfm network call for instant : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/audible/pfm/network/PfmDownloadClient;->pfmEndpoint:Lcom/audible/pfm/network/IPfmEndpoint;

    invoke-interface {p2, p1}, Lcom/audible/pfm/network/IPfmEndpoint;->getHushpuppyEndpointConfig(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 156
    sget-object p2, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ModifiedSinceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->NetworkCall:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p2, v0}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 157
    sget-object p2, Lcom/audible/pfm/network/PfmDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v0, Lcom/audible/pfm/logging/PfmNetworkCategory;->PFM_MODIFIED_SINCE:Lcom/audible/pfm/logging/PfmNetworkCategory;

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PFM-UPDATE - Making PFM \'if-modified-since\' request via Retrofit"

    invoke-interface {p2, v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p2

    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ModifiedSinceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-virtual {p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 162
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 163
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p2

    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ModifiedSinceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-virtual {p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 164
    sget-object p2, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ModifiedSinceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    invoke-direct {p0, p1, p2}, Lcom/audible/pfm/network/PfmDownloadClient;->getResult(Lretrofit2/Response;Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    sget-object p2, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;->PfmModule_ModifiedSinceUpdate:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;

    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, p2, v0}, Lcom/audible/pfm/network/PfmDownloadClient;->reportCounterMetric(Lcom/audible/pfm/metric/IMetricKeyValue$NetworkMetricKey;Lcom/audible/pfm/metric/IMetricKeyValue$MetricValue;)V

    .line 168
    throw p1
.end method
