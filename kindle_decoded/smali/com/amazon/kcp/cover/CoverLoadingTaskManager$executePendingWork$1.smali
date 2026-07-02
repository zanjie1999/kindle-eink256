.class final Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoverLoadingTaskManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executePendingWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$getHighPriorityExecutionOrder$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;->LIFO:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->getHighPriorityDeque()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->getHighPriorityDeque()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    :goto_0
    if-eqz v0, :cond_3

    .line 102
    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$getNetworkService$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->getHighPriorityDeque()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0

    .line 106
    :cond_2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method
