.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadStateSyncUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatasetAdd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDatasetRemove(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CurrentStates"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {p1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {p1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object p1

    const-string v1, "BookReadStates"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {p1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$600(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDelete(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
