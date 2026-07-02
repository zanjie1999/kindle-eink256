.class public Lcom/amazon/device/sync/failures/ThrottlingException;
.super Lcom/amazon/device/sync/failures/WhispersyncServerException;
.source "ThrottlingException.java"


# instance fields
.field private final mRetryAfterTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;J)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/sync/failures/WhispersyncServerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 13
    iput-wide p6, p0, Lcom/amazon/device/sync/failures/ThrottlingException;->mRetryAfterTime:J

    return-void
.end method


# virtual methods
.method public getRetryAfterTime()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/amazon/device/sync/failures/ThrottlingException;->mRetryAfterTime:J

    return-wide v0
.end method
