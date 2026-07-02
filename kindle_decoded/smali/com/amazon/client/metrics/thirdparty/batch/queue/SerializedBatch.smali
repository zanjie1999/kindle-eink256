.class public Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;
.super Ljava/lang/Object;
.source "SerializedBatch.java"


# instance fields
.field private mBatchContent:[B

.field private mTimestamp:J


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mBatchContent:[B

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mTimestamp:J

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mBatchContent:[B

    .line 20
    iput-wide p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mBatchContent:[B

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getSerializedBytes()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mBatchContent:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->mTimestamp:J

    return-wide v0
.end method
