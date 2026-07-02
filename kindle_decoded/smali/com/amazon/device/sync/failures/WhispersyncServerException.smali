.class public abstract Lcom/amazon/device/sync/failures/WhispersyncServerException;
.super Lcom/amazon/device/sync/failures/WhispersyncClientException;
.source "WhispersyncServerException.java"


# instance fields
.field private final mLastAmazonRequestId:Ljava/lang/String;

.field private final mLastReqServerTimestamp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p5}, Lcom/amazon/device/sync/failures/WhispersyncClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 19
    iput-object p3, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastReqServerTimestamp:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastAmazonRequestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLastAmazonRequestId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastAmazonRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReqServerTimestamp()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastReqServerTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " {Description=\'"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Timestamp=\'"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastReqServerTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", AmazonRequestId=\'"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/failures/WhispersyncServerException;->mLastAmazonRequestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
