.class final Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;
.super Ljava/lang/Object;
.source "FalkorATLSyncManagerClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->handleUserLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->deregister()V

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->disconnect()Z

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->setFalkorDataCache(Ljava/util/Map;)V

    return-void
.end method
