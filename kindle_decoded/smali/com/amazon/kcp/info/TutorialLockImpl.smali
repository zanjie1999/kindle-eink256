.class public final Lcom/amazon/kcp/info/TutorialLockImpl;
.super Ljava/lang/Object;
.source "TutorialLockHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/info/TutorialLock;


# instance fields
.field private final debug:Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;

.field private isShowingTutorial:Z

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;)V
    .locals 1

    const-string v0, "debug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->debug:Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;

    .line 69
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public declared-synchronized isShowingTutorial()Z
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->isShowingTutorial:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryLockTutorials()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->debug:Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;->areTutorialsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->isShowingTutorial:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 78
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlockTutorials()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/amazon/kcp/info/TutorialLockImpl;->isShowingTutorial:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
