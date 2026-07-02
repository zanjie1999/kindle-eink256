.class public abstract Lcom/amazon/device/sync/failures/WhispersyncClientException;
.super Ljava/lang/RuntimeException;
.source "WhispersyncClientException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;
    }
.end annotation


# instance fields
.field private mDatasetName:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field protected mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDescription:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDatasetName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-void
.end method


# virtual methods
.method public getDatasetName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDatasetName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDirection()Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-object v0
.end method

.method public setDatasetName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDatasetName:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/device/sync/failures/WhispersyncClientException;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    return-void
.end method
