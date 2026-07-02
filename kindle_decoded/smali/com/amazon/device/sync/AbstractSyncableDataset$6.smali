.class Lcom/amazon/device/sync/AbstractSyncableDataset$6;
.super Ljava/lang/Object;
.source "AbstractSyncableDataset.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/AbstractSyncableDataset;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-static {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->access$000(Lcom/amazon/device/sync/AbstractSyncableDataset;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-static {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->access$100(Lcom/amazon/device/sync/AbstractSyncableDataset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    iget-object v1, v1, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-virtual {v1, v2}, Lcom/amazon/device/sync/SyncableDataStore;->closeDataset(Lcom/amazon/device/sync/SyncableDataset;)V

    .line 79
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazon/device/sync/AbstractSyncableDataset;->access$102(Lcom/amazon/device/sync/AbstractSyncableDataset;Z)Z

    .line 80
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$6;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-virtual {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doClose()V

    :cond_0
    const/4 v1, 0x0

    .line 82
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
