.class final Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FalkorProcessesPlugin;->onFalkorFullSyncRequestEvent(Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;

.field final synthetic this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin;Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    iput-object p2, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->$event:Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;-><init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    invoke-static {v1}, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->access$isSyncProcessRunning$p(Lcom/amazon/kcp/library/FalkorProcessesPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin;->access$setPostSyncFinishProcess$p(Lcom/amazon/kcp/library/FalkorProcessesPlugin;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
