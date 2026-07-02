.class Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;
.super Landroid/os/AsyncTask;
.source "GoodreadsShelfAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amazon/ea/goodreadsshelf/service/ResponseData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final CONNECTION_TIMEOUT_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private metadataHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Ljava/lang/String;

.field private requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

.field simpleMetricsManager:Lcom/amazon/ea/metrics/SimpleMetricsManager;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->url:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestMethod:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->params:Ljava/util/Map;

    .line 46
    iput-object p4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->metadataHeaders:Ljava/util/Map;

    .line 47
    iput-object p5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 48
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->simpleMetricsManager:Lcom/amazon/ea/metrics/SimpleMetricsManager;

    return-void
.end method

.method private reportLatencyMetrics(J)V
    .locals 3

    .line 163
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    iget-object v1, v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    const-string v2, "AutoshelfServiceLatency"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/ea/metrics/Profiler;->addTimeMillis(Ljava/lang/String;J)V

    .line 166
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->simpleMetricsManager:Lcom/amazon/ea/metrics/SimpleMetricsManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    iget-object v1, v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private reportServiceCallExceptionMetrics(Ljava/lang/String;)V
    .locals 4

    .line 146
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AutoshelfServiceTimeout"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    iget-object v2, v2, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "AutoshelfServiceException"

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->simpleMetricsManager:Lcom/amazon/ea/metrics/SimpleMetricsManager;

    .line 152
    iget-object v3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    iget-object v3, v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->simpleMetricsManager:Lcom/amazon/ea/metrics/SimpleMetricsManager;

    invoke-virtual {v0, v2, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/goodreadsshelf/service/ResponseData;
    .locals 9

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    iget-boolean p1, p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-nez p1, :cond_2

    .line 59
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getDelayAllAutoShelfUpdateRequests()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getAutoShelfUpdateRequestsDelayDuration()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 65
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getFailAllAutoShelfUpdateRequests()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    new-instance p1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    const/16 v0, 0x190

    invoke-direct {p1, v0, v2, v2}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    .line 67
    :cond_1
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getFailAllAutoShelfUpdateRequestsWithLinkingError()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    new-instance p1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    const/16 v0, 0x191

    invoke-direct {p1, v0, v2, v2}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    const/4 v3, 0x1

    .line 76
    :try_start_1
    sget-object v4, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 77
    new-instance v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v5, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v5

    .line 79
    new-instance v6, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {v6, v4, v5}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    sget-object v4, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v6, v4}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v4

    .line 82
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x3a98

    .line 84
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 87
    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->metadataHeaders:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->metadataHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->metadataHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->params:Ljava/util/Map;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->params:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 94
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 96
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->params:Ljava/util/Map;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 97
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 102
    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 103
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_5

    .line 106
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/ea/util/JSONUtil;->parseInputStreamToJsonObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v2

    .line 108
    :goto_2
    new-instance v8, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    invoke-direct {v8, v5, v6, v7}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_6

    .line 117
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->reportLatencyMetrics(J)V

    move-object v2, v8

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_2
    move-exception v5

    move-object v4, v2

    .line 111
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    sget-object v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error with shelf service call (%s): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->url:Ljava/lang/String;

    aput-object v8, v3, p1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->reportServiceCallExceptionMetrics(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_8

    .line 117
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, v3, v4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->reportLatencyMetrics(J)V

    .line 122
    :goto_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 123
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed Goodreads service call for URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_a

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->reportLatencyMetrics(J)V

    .line 120
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    move-result-object p1

    return-object p1
.end method

.method public getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    return-object v0
.end method
