.class public final Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;
.super Ljava/lang/Object;
.source "HttpRequestLatencyMetrics.kt"


# instance fields
.field private final connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

.field private final requestCompletedByHttpClientMilestone:J

.field private final requestEnqueuedToHttpClientMilestone:J

.field private final requestStartedByHttpClientMilestone:J

.field private final responseReceivedByHttpClientMilestone:J


# direct methods
.method public constructor <init>(JJJJLcom/amazon/kindle/webservices/ConnectionDetails;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    iput-wide p3, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    iput-wide p5, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    iput-wide p7, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    iput-object p9, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;

    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    iget-wide v2, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    iget-wide v2, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    iget-wide v2, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    iget-wide v2, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    iget-object p1, p1, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-object v0
.end method

.method public final getRequestCompletedByHttpClientMilestone()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    return-wide v0
.end method

.method public final getRequestEnqueuedToHttpClientMilestone()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    return-wide v0
.end method

.method public final getRequestStartedByHttpClientMilestone()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    return-wide v0
.end method

.method public final getResponseReceivedByHttpClientMilestone()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequestLatencyMetrics(requestEnqueuedToHttpClientMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestEnqueuedToHttpClientMilestone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestStartedByHttpClientMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestStartedByHttpClientMilestone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseReceivedByHttpClientMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->responseReceivedByHttpClientMilestone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestCompletedByHttpClientMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->requestCompletedByHttpClientMilestone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectionDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
