.class Lcom/amazon/kcp/library/LibraryFilterStateManager$1;
.super Ljava/lang/Object;
.source "LibraryFilterStateManager.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFilterStateManager;->getLibraryFilterChangedListener()Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFilterStateManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryFilterItemDeregistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;-><init>(Lcom/amazon/kcp/library/LibraryFilterStateManager$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->access$000(Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    return-void
.end method

.method public onLibraryFilterItemRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->access$000(Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    return-void
.end method
