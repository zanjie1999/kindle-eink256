.class Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription$1;
.super Ljava/lang/Object;
.source "Notifications.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription$1;->this$0:Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
