.class public Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;
.super Ljava/lang/Object;
.source "ResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRetryBuilder"
.end annotation


# instance fields
.field private retryCount:I

.field private retryTimestamp:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
    .locals 4

    .line 156
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryCount:I

    iget-wide v2, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryTimestamp:J

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;-><init>(IJ)V

    return-object v0
.end method

.method public retryCount(I)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;
    .locals 0

    .line 156
    iput p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryCount:I

    return-object p0
.end method

.method public retryTimestamp(J)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;
    .locals 0

    .line 156
    iput-wide p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryTimestamp:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceModel.DownloadRetry.DownloadRetryBuilder(retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
