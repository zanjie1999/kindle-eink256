.class final Lcom/amazon/device/sync/Notifications$3;
.super Ljava/lang/Object;
.source "Notifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Notifications;->notifyConflicts(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conflicts:Ljava/util/Set;

.field final synthetic val$datasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

.field final synthetic val$listeners:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/device/sync/Notifications$3;->val$listeners:Ljava/util/Set;

    iput-object p2, p0, Lcom/amazon/device/sync/Notifications$3;->val$datasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    iput-object p3, p0, Lcom/amazon/device/sync/Notifications$3;->val$conflicts:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/amazon/device/sync/Notifications$3;->val$listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDatasetListener;

    .line 184
    iget-object v2, p0, Lcom/amazon/device/sync/Notifications$3;->val$datasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v3, p0, Lcom/amazon/device/sync/Notifications$3;->val$conflicts:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Lcom/amazon/device/sync/SyncableDatasetListener;->onConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
