.class public Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
.super Ljava/lang/Object;
.source "ResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRetry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;
    }
.end annotation


# instance fields
.field private retryCount:I

.field private retryTimestamp:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->retryCount:I

    iput-wide p2, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->retryTimestamp:J

    return-void
.end method

.method public static builder()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;
    .locals 1

    .line 156
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 155
    instance-of p1, p1, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    invoke-virtual {p1, p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryTimestamp()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryTimestamp()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->retryCount:I

    return v0
.end method

.method public getRetryTimestamp()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->retryTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 155
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryTimestamp()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long v1, v4, v2

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceModel.DownloadRetry(retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->getRetryTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
