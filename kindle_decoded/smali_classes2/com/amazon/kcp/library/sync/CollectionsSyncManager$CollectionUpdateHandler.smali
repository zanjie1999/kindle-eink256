.class Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/sync/CollectionsSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollectionUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCollectionDataSet(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CollectionEntries"

    .line 807
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onDatasetAdd(Ljava/lang/String;)V
    .locals 2

    .line 797
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDatasetAdd called for dataset - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onDatasetRemove(Ljava/lang/String;)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v1, "CloudCollections.Items"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDelete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 780
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 781
    invoke-virtual {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->isCollectionDataSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 784
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleCollectionDelete(Ljava/util/Collection;)V

    .line 792
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleCollectionItemDelete(Ljava/util/Collection;)V

    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 761
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 762
    invoke-virtual {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getDataset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->isCollectionDataSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleCollectionUpdate(Ljava/util/Collection;)V

    .line 773
    iget-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleCollectionItemUpdate(Ljava/util/Collection;)V

    return-void
.end method
