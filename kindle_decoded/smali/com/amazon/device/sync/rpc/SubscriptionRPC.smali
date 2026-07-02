.class public final Lcom/amazon/device/sync/rpc/SubscriptionRPC;
.super Ljava/lang/Object;
.source "SubscriptionRPC.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

.field private mRPCFactory:Lcom/amazon/device/sync/rpc/SyncRPC$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mRPCFactory:Lcom/amazon/device/sync/rpc/SyncRPC$Factory;

    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/rpc/SyncRPC$Factory;->create(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncRPC;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    .line 33
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mAccountId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSubscription(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->supportsPushNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/whispersync/PostDirectorySubscriptionRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/PostDirectorySubscriptionRequest;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mAccountId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getPushSubscription(Ljava/lang/String;)Lcom/amazon/whispersync/Subscription;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/PostDirectorySubscriptionRequest;->setSubscription(Lcom/amazon/whispersync/Subscription;)V

    .line 43
    iget-object v2, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    sget-object v3, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->POST_DIRECTORY_SUBSCRIPTION:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/Subscription;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/SubscriptionRPC;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
