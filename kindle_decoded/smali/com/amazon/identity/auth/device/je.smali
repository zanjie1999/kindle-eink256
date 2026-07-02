.class public Lcom/amazon/identity/auth/device/je;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final rm:Ljava/util/Timer;

.field private rn:Z

.field private ro:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/je;-><init>(Ljava/util/Timer;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Timer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/identity/auth/device/je;->rm:Ljava/util/Timer;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/je;->rn:Z

    .line 23
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/je;->ro:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/je;->rm:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/je;->rn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gP()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 45
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/je;->ro:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gQ()Z
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/je;->ro:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskScheduler"

    const-string v1, "Schedule a delayed task"

    .line 34
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/je;->rn:Z

    if-eqz v0, :cond_0

    const-string p1, "TaskScheduler"

    const-string p2, "The timer has been canceled, skip scheduling"

    .line 37
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/je;->rm:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
