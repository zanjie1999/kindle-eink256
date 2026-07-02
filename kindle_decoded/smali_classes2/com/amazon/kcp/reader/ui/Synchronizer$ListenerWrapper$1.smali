.class Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;
.super Ljava/lang/Object;
.source "Synchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->showSyncMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

.field final synthetic val$inProgress:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;Z)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;->this$1:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;->val$inProgress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;->this$1:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->access$000(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;)Lcom/amazon/kcp/sync/ISyncMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;->this$1:Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->access$000(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;)Lcom/amazon/kcp/sync/ISyncMessageListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;->val$inProgress:Z

    invoke-interface {v0, v1}, Lcom/amazon/kcp/sync/ISyncMessageListener;->onShowSyncMessage(Z)Z

    :cond_0
    return-void
.end method
