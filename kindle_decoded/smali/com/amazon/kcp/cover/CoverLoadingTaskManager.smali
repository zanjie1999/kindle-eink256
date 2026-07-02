.class public final Lcom/amazon/kcp/cover/CoverLoadingTaskManager;
.super Ljava/lang/Object;
.source "CoverLoadingTaskManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;,
        Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;

.field private static final DEFAULT_HIGH_PRIORITY_EXEC_ORDER:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;


# instance fields
.field private final highPriorityDeque:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private highPriorityExecutionOrder:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

.field private final lowPriorityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private final queueExecutor:Ljava/util/concurrent/ExecutorService;

.field private final workExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->Companion:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;

    .line 41
    sget-object v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;->LIFO:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    sput-object v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->DEFAULT_HIGH_PRIORITY_EXEC_ORDER:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/network/INetworkService;)V
    .locals 1

    const-string/jumbo v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->queueExecutor:Ljava/util/concurrent/ExecutorService;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->workExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->lowPriorityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->highPriorityDeque:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 38
    sget-object p1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->DEFAULT_HIGH_PRIORITY_EXEC_ORDER:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->highPriorityExecutionOrder:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    return-void
.end method

.method public static final synthetic access$executePendingWorkOnExecutor(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executePendingWorkOnExecutor()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_HIGH_PRIORITY_EXEC_ORDER$cp()Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->DEFAULT_HIGH_PRIORITY_EXEC_ORDER:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    return-object v0
.end method

.method public static final synthetic access$getHighPriorityExecutionOrder$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->highPriorityExecutionOrder:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    return-object p0
.end method

.method public static final synthetic access$getNetworkService$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kindle/network/INetworkService;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-object p0
.end method

.method private final executePendingWorkOnExecutor()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->workExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWorkOnExecutor$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWorkOnExecutor$1;-><init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final executePendingWork()V
    .locals 3

    .line 95
    new-instance v0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;-><init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V

    .line 113
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->invoke()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWork$1;->invoke()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->lowPriorityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v2}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->lowPriorityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 122
    :cond_2
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    if-nez v1, :cond_0

    return-void
.end method

.method public final executeWithHighPriority(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "workClosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->queueExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithHighPriority$1;-><init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final executeWithLowPriority(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "workClosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->queueExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithLowPriority$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executeWithLowPriority$1;-><init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getHighPriorityDeque()Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->highPriorityDeque:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method public final getLowPriorityQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->lowPriorityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/amazon/kcp/cover/NetworkChangeReceiver;

    new-instance v2, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;-><init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V

    invoke-direct {v1, v2}, Lcom/amazon/kcp/cover/NetworkChangeReceiver;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setExecutionOrder(Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;)V
    .locals 1

    const-string/jumbo v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->highPriorityExecutionOrder:Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    return-void
.end method
