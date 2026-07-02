.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "S3ObjectInputStream.java"


# instance fields
.field private eof:Z

.field private final httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->wrapWithByteCounting(Ljava/io/InputStream;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 59
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;

    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric;->S3_DOWLOAD_THROUGHPUT:Lcom/amazon/kindle/com/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    invoke-direct {p3, v0, p1}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricFilterInputStream;-><init>(Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    move-object p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method

.method private doAbort()V
    .locals 3

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    const-class v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static wrapWithByteCounting(Ljava/io/InputStream;)Z
    .locals 2

    .line 71
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 76
    check-cast p0, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;

    .line 79
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->doAbort()V

    return-void
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    .line 169
    iput-boolean p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    :cond_0
    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->reset()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;->eof:Z

    return-void
.end method
