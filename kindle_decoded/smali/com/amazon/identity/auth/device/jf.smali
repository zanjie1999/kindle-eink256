.class public final Lcom/amazon/identity/auth/device/jf;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final aK:[Ljava/lang/Object;

.field public static final rp:Ljava/util/concurrent/Executor;

.field private static rq:Ljava/lang/Thread;

.field private static rr:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/amazon/identity/auth/device/io;

    const-string v1, "MAPCommonThreadPool"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/io;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/jf;->rp:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    sput-object v0, Lcom/amazon/identity/auth/device/jf;->aK:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 9
    sput-object p0, Lcom/amazon/identity/auth/device/jf;->rr:Landroid/os/Handler;

    return-object p0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/identity/auth/device/jf;->rp:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dE(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ip;
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/identity/auth/device/ip;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ip;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/amazon/identity/auth/device/jf;->gR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static gR()Z
    .locals 2

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static gS()Landroid/os/Handler;
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/identity/auth/device/jf;->aK:[Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/jf;->rr:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/amazon/identity/auth/device/jf;->rr:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/jf$1;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/jf$1;-><init>()V

    .line 73
    sput-object v1, Lcom/amazon/identity/auth/device/jf;->rq:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 75
    sget-object v1, Lcom/amazon/identity/auth/device/jf;->rr:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
