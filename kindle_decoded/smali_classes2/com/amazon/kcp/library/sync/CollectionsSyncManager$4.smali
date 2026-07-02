.class Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleFullCollectionsSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "About to begin Collections manual/app start-up sync..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v1, "CloudCollections"

    const-string v2, "CloudCollections.Items"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->connect([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to connect to the Whispersync back-end; aborting manual sync..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$200(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$300(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;Z)V

    .line 192
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collections manual/app start-up sync completed!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
