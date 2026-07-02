.class Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleUserAccountDeregistration()V
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

    .line 147
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing Collections clean-up upon user deregistration..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->deregister()V

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->disconnect()Z

    return-void
.end method
