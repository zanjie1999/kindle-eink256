.class Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;
.super Ljava/lang/Object;
.source "ForwardingLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WORK_QUEUE_SIZE:I = 0xa


# instance fields
.field private impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

.field private final listenerLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private final thread:Ljava/lang/Thread;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 58
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    new-instance v1, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$QueueWorker;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;)V

    iput-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->shouldStop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addWorkItem(Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->TAG:Ljava/lang/String;

    const-string v0, "Work queue for lifecycle listeners is full, dropping events to keep UI thread clear."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$4;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->addWorkItem(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$3;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->addWorkItem(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$2;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->addWorkItem(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTutorialShown()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener$1;-><init>(Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->addWorkItem(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setUnderlyingListener(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->impl:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->shouldStop:Z

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ForwardingLifecycleListener;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
