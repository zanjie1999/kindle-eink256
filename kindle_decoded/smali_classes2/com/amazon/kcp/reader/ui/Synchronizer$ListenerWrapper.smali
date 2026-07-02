.class final Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/Synchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final syncHandler:Landroid/os/Handler;

.field private syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/Synchronizer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/Synchronizer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->this$0:Lcom/amazon/kcp/reader/ui/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;)Lcom/amazon/kcp/sync/ISyncMessageListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

    return-object p0
.end method


# virtual methods
.method hideSyncMessage(JZ)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->this$0:Lcom/amazon/kcp/reader/ui/Synchronizer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->access$100(Lcom/amazon/kcp/reader/ui/Synchronizer;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->this$0:Lcom/amazon/kcp/reader/ui/Synchronizer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/Synchronizer;->access$202(Lcom/amazon/kcp/reader/ui/Synchronizer;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

    if-eqz p1, :cond_1

    .line 65
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

    invoke-interface {p1, p3}, Lcom/amazon/kcp/sync/ISyncMessageListener;->onHideSyncMessage(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncHandler:Landroid/os/Handler;

    new-instance p2, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$2;

    invoke-direct {p2, p0, p3}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$2;-><init>(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method setListener(Lcom/amazon/kcp/sync/ISyncMessageListener;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncListener:Lcom/amazon/kcp/sync/ISyncMessageListener;

    const/4 p1, 0x1

    return p1
.end method

.method showSyncMessage(Z)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;->syncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper$1;-><init>(Lcom/amazon/kcp/reader/ui/Synchronizer$ListenerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
