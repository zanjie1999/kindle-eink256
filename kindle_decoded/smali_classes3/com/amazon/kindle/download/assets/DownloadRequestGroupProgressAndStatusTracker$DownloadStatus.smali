.class final Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadStatus"
.end annotation


# instance fields
.field private volatile byteProgress:J

.field private requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

.field private shouldReport:Z

.field private volatile totalBytes:J


# direct methods
.method public constructor <init>(ZJJLcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 1

    const-string v0, "requestStatus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    iput-wide p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    iput-wide p4, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    iput-object p6, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    iget-wide v2, p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    iget-wide v2, p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    iget-object p1, p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

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

.method public final getByteProgress$com_amazon_kindle_dm()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    return-wide v0
.end method

.method public final getRequestStatus$com_amazon_kindle_dm()Lcom/amazon/kindle/webservices/RequestStatus;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    return-object v0
.end method

.method public final getShouldReport$com_amazon_kindle_dm()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    return v0
.end method

.method public final getTotalBytes$com_amazon_kindle_dm()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setByteProgress$com_amazon_kindle_dm(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    return-void
.end method

.method public final setRequestStatus$com_amazon_kindle_dm(Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    return-void
.end method

.method public final setTotalBytes$com_amazon_kindle_dm(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatus(shouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->shouldReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", byteProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->byteProgress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->requestStatus:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
