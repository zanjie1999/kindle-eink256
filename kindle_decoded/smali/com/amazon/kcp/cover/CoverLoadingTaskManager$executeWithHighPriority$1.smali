.class final Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;
.super Ljava/lang/Object;
.source "CoverLoadingTaskManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executeWithHighPriority(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $workClosure:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    iput-object p2, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->$workClosure:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->getHighPriorityDeque()Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->$workClosure:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$getNetworkService$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$executePendingWorkOnExecutor(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V

    :cond_0
    return-void
.end method
