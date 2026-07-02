.class final Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;
.super Ljava/lang/Object;
.source "CreateDirectorySubscriptionOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Context is required"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AccountId is required"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;->mAccountId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/Synchronizer;->sendDirectorySubscription(Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method
