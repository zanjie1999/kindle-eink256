.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->updateWhisperSyncData(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

.field final synthetic val$readDataMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Ljava/util/Map;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->val$readDataMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->val$readDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 340
    new-instance v4, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    invoke-direct {v4, v3}, Lcom/amazon/kcp/library/sync/SyncIdentifier;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-virtual {v4}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    new-instance v4, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ReadData;

    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/amazon/kindle/util/ReadDataJsonUtil;->serialize(Lcom/amazon/kindle/content/ReadData;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CurrentStates"

    invoke-direct {v4, v5, v3, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid BookId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$500(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v2}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v2}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v2

    const-string v3, "BookReadStates"

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->update(Ljava/lang/String;Ljava/util/List;Z)Z

    goto :goto_1

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$600(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 356
    invoke-static {}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issue syncing ReadData, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException;->getCode()Lcom/amazon/kindle/collections/sync/SyncException$Code;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
