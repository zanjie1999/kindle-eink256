.class final Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;
.super Ljava/lang/Object;
.source "FalkorLastReadSyncManagerClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->handleUserLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->deregister()V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$handleUserLogout$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->disconnect()Z

    return-void
.end method
