.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "WikipediaInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WikipediaResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaResponseHandler;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "FailedToCloseInputStream"

    const-string v1, "Couldn\'t close input stream"

    const-string v2, "INFO_CARD_WIKIPEDIA"

    .line 241
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 243
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 250
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v4, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 257
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Couldn\'t receive response from server"

    invoke-static {v5, v6, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "FailedToReadFromServer"

    .line 258
    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v2, p1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 262
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    move-exception p1

    .line 255
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Java doesn\'t support UTF-8 apparently."

    invoke-static {v5, v6, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_1

    .line 262
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 265
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v2, v0, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_4

    :catch_6
    move-exception p1

    .line 252
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to parse json from response"

    invoke-static {v5, v6, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "JSONParseFailure"

    .line 253
    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v2, p1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_1

    .line 262
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v4

    .line 265
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v3, v2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 268
    :cond_2
    :goto_6
    throw p1
.end method
