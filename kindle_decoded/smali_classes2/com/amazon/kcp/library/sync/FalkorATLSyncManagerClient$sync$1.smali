.class final Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;
.super Ljava/lang/Object;
.source "FalkorATLSyncManagerClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->sync()V
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

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->access$getTAG$p(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->syncCloud()V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$sync$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;->syncLocal()V

    return-void
.end method
