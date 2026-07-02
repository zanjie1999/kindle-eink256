.class Lcom/amazon/kindle/toast/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;,
        Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I

.field private static volatile sSnackbarManager:Lcom/amazon/kindle/toast/snackbar/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/toast/snackbar/SnackbarManager;Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->handleTimeout(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;)V

    return-void
.end method

.method private cancelSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)Z
    .locals 2

    .line 163
    invoke-static {p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->access$200(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    invoke-interface {v0, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;->dismiss(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static getInstance()Lcom/amazon/kindle/toast/snackbar/SnackbarManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->sSnackbarManager:Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    invoke-direct {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->sSnackbarManager:Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->sSnackbarManager:Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    return-object v0
.end method

.method private handleTimeout(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 184
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 186
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isCurrentSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNextSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    .line 149
    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    .line 152
    invoke-static {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->access$200(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;->show()V

    goto :goto_0

    .line 157
    :cond_0
    iput-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 94
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrentOrNext(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDismissed(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 110
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public show(ILcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-static {p2, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->access$102(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)I

    .line 64
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-static {p2, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;->access$102(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)I

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)V

    iput-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mNextSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->mCurrentSnackbar:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$SnackbarRecord;

    .line 82
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
