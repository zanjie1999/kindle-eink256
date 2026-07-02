.class Lcom/amazon/sitb/android/StoreRequest$1;
.super Lcom/amazon/sitb/android/metrics/MeasuredTask;
.source "StoreRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/StoreRequest;->execute(Z)Lcom/amazon/sitb/android/StoreResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/metrics/MeasuredTask<",
        "Lcom/amazon/sitb/android/StoreResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/StoreRequest;

.field final synthetic val$checkForEUMFA:Z


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/StoreRequest;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Z)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 106
    iput-object v0, v9, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    move/from16 v0, p10

    iput-boolean v0, v9, Lcom/amazon/sitb/android/StoreRequest$1;->val$checkForEUMFA:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/metrics/MeasuredTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method


# virtual methods
.method public doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/StoreResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/amazon/sitb/android/StoreResponse;->GENERAL_FAILURE:Lcom/amazon/sitb/android/StoreResponse;

    .line 114
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v2}, Lcom/amazon/sitb/android/StoreRequest;->access$000(Lcom/amazon/sitb/android/StoreRequest;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 115
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v3}, Lcom/amazon/sitb/android/StoreRequest;->access$100(Lcom/amazon/sitb/android/StoreRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v1, "User-Agent"

    .line 117
    iget-object v3, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v3}, Lcom/amazon/sitb/android/StoreRequest;->access$200(Lcom/amazon/sitb/android/StoreRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 120
    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 121
    iget-object v4, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v4}, Lcom/amazon/sitb/android/StoreRequest;->access$300(Lcom/amazon/sitb/android/StoreRequest;)[Lorg/apache/http/cookie/Cookie;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V

    const-string v4, "http.cookie-store"

    .line 122
    invoke-virtual {v1, v4, v3}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 125
    iget-object v5, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v5}, Lcom/amazon/sitb/android/StoreRequest;->access$400(Lcom/amazon/sitb/android/StoreRequest;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    iget-object v5, p0, Lcom/amazon/sitb/android/StoreRequest$1;->this$0:Lcom/amazon/sitb/android/StoreRequest;

    invoke-static {v5}, Lcom/amazon/sitb/android/StoreRequest;->access$500(Lcom/amazon/sitb/android/StoreRequest;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 129
    invoke-virtual {v5, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/amazon/sitb/android/StoreResponse;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/amazon/sitb/android/StoreResponse;-><init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->access$600()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v2

    const-string v3, "RuntimeException in execute:"

    invoke-interface {v2, v3, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    sget-object v1, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_FAILURE:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addCounter(Lcom/amazon/sitb/android/Metric;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 142
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->access$600()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v2

    const-string v3, "IOException in execute:"

    invoke-interface {v2, v3, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    sget-object v1, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_FAILURE:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addCounter(Lcom/amazon/sitb/android/Metric;)V

    goto :goto_0

    .line 137
    :catch_2
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->access$600()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v1

    const-string v2, "Connection timeout"

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_CONN_TIMEOUT:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addCounter(Lcom/amazon/sitb/android/Metric;)V

    goto :goto_0

    .line 133
    :catch_3
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->access$600()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v1

    const-string v2, "Socket timeout"

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/amazon/sitb/android/Metric;->STORE_REQUEST_SO_TIMEOUT:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1, v1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addCounter(Lcom/amazon/sitb/android/Metric;)V

    .line 150
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/sitb/android/StoreRequest$1;->val$checkForEUMFA:Z

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/StoreResponse;->setCheckForEUMFA(Z)V

    .line 152
    invoke-static {}, Lcom/amazon/sitb/android/StoreRequest;->access$600()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESPONSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/StoreRequest$1;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/StoreResponse;

    move-result-object p1

    return-object p1
.end method
