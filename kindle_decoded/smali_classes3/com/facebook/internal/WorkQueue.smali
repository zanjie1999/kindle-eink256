.class Lcom/facebook/internal/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/WorkQueue$WorkItem;,
        Lcom/facebook/internal/WorkQueue$WorkNode;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private runningCount:I

.field private runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private final workLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 36
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 44
    iput p1, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    .line 45
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object p0
.end method

.method static synthetic access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object p1
.end method

.method private execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/internal/WorkQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/WorkQueue$1;-><init>(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {p1, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 90
    iget p1, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 93
    :cond_0
    iget p1, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    iget v2, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    if-ge p1, v2, :cond_1

    .line 94
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    if-eqz p1, :cond_2

    .line 99
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {p1, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 100
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 101
    iget v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 103
    invoke-virtual {p1, v1}, Lcom/facebook/internal/WorkQueue$WorkNode;->setIsRunning(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 106
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/internal/WorkQueue;->execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private startItem()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    return-void
.end method


# virtual methods
.method addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object p1

    return-object p1
.end method

.method addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;
    .locals 2

    .line 53
    new-instance v0, Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/WorkQueue$WorkNode;-><init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 54
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter p1

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-direct {p0}, Lcom/facebook/internal/WorkQueue;->startItem()V

    return-object v0

    :catchall_0
    move-exception p2

    .line 56
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
