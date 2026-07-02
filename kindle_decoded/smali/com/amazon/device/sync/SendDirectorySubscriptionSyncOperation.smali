.class Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;
.super Lcom/amazon/device/sync/SyncOperation;
.source "SendDirectorySubscriptionSyncOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 6

    .line 21
    sget-object v3, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    sget-object v4, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->SUBSCRIPTIONS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const-string v2, "Sending directory subscription"

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/SyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 24
    iput-object p2, p0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method private createCloudSubscription(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/rpc/SubscriptionRPC;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/amazon/device/sync/GetDirectorySubscriptionUriDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/amazon/device/sync/GetDirectorySubscriptionUriDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/amazon/device/sync/GetDirectorySubscriptionUriDbOperation;->execute()Ljava/lang/String;

    move-result-object p1

    .line 63
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->createSubscription(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 67
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Failed to create subscription. Error : %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    throw p1
.end method

.method private createLocalSubscription(Landroid/content/Context;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->execute()V

    return-void
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->isSubscriptionAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->createCloudSubscription(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->createLocalSubscription(Landroid/content/Context;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 89
    const-class v0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/device/sync/SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getLockKey()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->SUBSCRIPTIONS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/amazon/device/sync/SyncOperation;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSubscriptionAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/device/sync/GetIsSubscribedToDirectoryDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/GetIsSubscribedToDirectoryDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetIsSubscribedToDirectoryDbOperation;->execute()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SUBSCRIBED"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
