.class abstract Lcom/amazon/device/sync/SyncOperation;
.super Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;
.source "SyncOperation.java"


# instance fields
.field protected final mDescription:Ljava/lang/String;

.field protected final mId:I

.field protected final mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

.field protected final mSyncActionScope:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

.field protected final mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Id cannot be null"

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Description cannot be null"

    invoke-static {p2, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Sync Direction cannot be null"

    invoke-static {p3, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Sync Action Scope cannot be null"

    invoke-static {p4, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Log cannot be null"

    invoke-static {p5, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput p1, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    .line 32
    iput-object p2, p0, Lcom/amazon/device/sync/SyncOperation;->mDescription:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    .line 34
    iput-object p4, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncActionScope:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    .line 35
    iput-object p5, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    check-cast p1, Lcom/amazon/device/sync/SyncOperation;

    .line 69
    iget-object v2, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncActionScope:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    iget-object v3, p1, Lcom/amazon/device/sync/SyncOperation;->mSyncActionScope:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    if-eq v2, v3, :cond_2

    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    iget-object p1, p1, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected generateLocalStoreException()Lcom/amazon/device/sync/failures/LocalStoreException;
    .locals 4

    .line 52
    new-instance v0, Lcom/amazon/device/sync/failures/LocalStoreException;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncOperation;->mDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/device/sync/failures/LocalStoreException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    return-object v0
.end method

.method protected getDescription()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncActionScope:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
