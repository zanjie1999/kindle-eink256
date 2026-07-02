.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->handleUserLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->deregister()V

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->disconnect()Z

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$600(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$702(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Z)Z

    return-void
.end method
