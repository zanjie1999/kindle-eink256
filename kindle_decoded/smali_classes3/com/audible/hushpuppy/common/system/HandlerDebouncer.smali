.class public final Lcom/audible/hushpuppy/common/system/HandlerDebouncer;
.super Lcom/audible/hushpuppy/common/system/AbstractDebouncer;
.source "HandlerDebouncer.java"


# static fields
.field private static final DEFAULT_REFRESH_TIME_MSEC:I = 0x21


# instance fields
.field private callInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final delayTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x21

    .line 54
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>(Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;-><init>(Landroid/os/Handler;)V

    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->callInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput p2, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->delayTime:I

    return-void
.end method


# virtual methods
.method protected declared-synchronized handlePost(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->callInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->callInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->delayTime:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onAfterRun()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;->callInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
