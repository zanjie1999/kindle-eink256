.class Lcom/amazon/device/sync/AbstractSyncableDataset$8;
.super Ljava/lang/Object;
.source "AbstractSyncableDataset.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/AbstractSyncableDataset;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
        "Ljava/lang/Object;",
        "Lcom/amazon/device/sync/SyncableDeletedException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-static {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->access$000(Lcom/amazon/device/sync/AbstractSyncableDataset;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-virtual {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 147
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-static {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->access$200(Lcom/amazon/device/sync/AbstractSyncableDataset;)V

    .line 148
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset$8;->this$0:Lcom/amazon/device/sync/AbstractSyncableDataset;

    invoke-virtual {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doReset()V

    .line 149
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
