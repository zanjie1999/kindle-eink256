.class public abstract Lcom/amazon/ku/service/GsonDownloadRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "GsonDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BodyType:",
        "Ljava/lang/Object;",
        "ResponseType::",
        "Lcom/amazon/bookwizard/http/IWithHeaders;",
        ">",
        "Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;",
        "Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.service.GsonDownloadRequest"

.field private static final TEXT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final action:Ljava/lang/String;

.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBodyType;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final metric:Lcom/amazon/ku/metrics/Metric;

.field private final responseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/ku/service/GsonDownloadRequest;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TBodyType;",
            "Ljava/lang/Class<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->url:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->action:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->headers:Ljava/util/Map;

    .line 70
    iput-object p4, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->body:Ljava/lang/Object;

    .line 71
    iput-object p5, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->responseClazz:Ljava/lang/Class;

    .line 73
    new-instance p1, Lcom/amazon/ku/metrics/Metric;

    const-string p2, "GsonDownloadRequestOperation"

    invoke-direct {p1, p2}, Lcom/amazon/ku/metrics/Metric;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    .line 74
    invoke-virtual {p0}, Lcom/amazon/ku/service/GsonDownloadRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ku/metrics/Metric;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method private getJsonString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/krx/download/IOUtils;->readInputAsByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    sget-object v0, Lcom/amazon/ku/service/GsonDownloadRequest;->TAG:Ljava/lang/String;

    const-string v1, "Failed to extract string from the response"

    invoke-static {v0, v1, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->body:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    sget-object v1, Lcom/amazon/ku/service/GsonDownloadRequest;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 103
    sget-object v2, Lcom/amazon/ku/service/GsonDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get binary for JSON request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getMetricErrorName()Ljava/lang/String;
.end method

.method protected abstract getMetricSuccessName()Ljava/lang/String;
.end method

.method protected abstract getMetricSuccessRateName()Ljava/lang/String;
.end method

.method protected abstract getMetricTimerName()Ljava/lang/String;
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 0

    return-object p0
.end method

.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-virtual {p0}, Lcom/amazon/ku/service/GsonDownloadRequest;->getMetricTimerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/ku/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/ku/service/GsonDownloadRequest;->getMetricErrorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/ku/service/GsonDownloadRequest;->getMetricSuccessName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/ku/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-virtual {p0}, Lcom/amazon/ku/service/GsonDownloadRequest;->getMetricSuccessRateName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 153
    iget-object p1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->metric:Lcom/amazon/ku/metrics/Metric;

    invoke-virtual {p1}, Lcom/amazon/ku/metrics/Metric;->close()V

    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusCode(I)V
    .locals 0

    return-void
.end method

.method protected parseJsonInputStream(Ljava/io/InputStream;)Lcom/amazon/bookwizard/http/IWithHeaders;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TResponseType;"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Lcom/amazon/ku/service/GsonDownloadRequest;->getJsonString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    sget-object v0, Lcom/amazon/ku/service/GsonDownloadRequest;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/amazon/ku/service/GsonDownloadRequest;->responseClazz:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/http/IWithHeaders;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    sget-object v0, Lcom/amazon/ku/service/GsonDownloadRequest;->TAG:Ljava/lang/String;

    const-string v1, "Failed to parse JSON response"

    invoke-static {v0, v1, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
