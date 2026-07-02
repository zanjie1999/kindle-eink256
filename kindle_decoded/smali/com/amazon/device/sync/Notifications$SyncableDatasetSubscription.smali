.class final Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;
.super Ljava/lang/Object;
.source "Notifications.java"

# interfaces
.implements Lcom/amazon/device/sync/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncableDatasetSubscription"
.end annotation


# instance fields
.field private final mAccountKey:Ljava/lang/String;

.field private final mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

.field private final mListener:Lcom/amazon/device/sync/SyncableDatasetListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "*>;"
        }
    .end annotation
.end field

.field private mSubscriptionStatus:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mAccountKey:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    .line 261
    iput-object p3, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mListener:Lcom/amazon/device/sync/SyncableDatasetListener;

    .line 262
    iput-object p4, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mSubscriptionStatus:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;Ljava/util/concurrent/Future;Lcom/amazon/device/sync/Notifications$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;Ljava/util/concurrent/Future;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionStatus()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mSubscriptionStatus:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public terminate()V
    .locals 2

    .line 271
    invoke-static {}, Lcom/amazon/device/sync/Notifications;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 274
    iget-object v1, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mListener:Lcom/amazon/device/sync/SyncableDatasetListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription$1;-><init>(Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->mSubscriptionStatus:Ljava/util/concurrent/Future;

    return-void
.end method
