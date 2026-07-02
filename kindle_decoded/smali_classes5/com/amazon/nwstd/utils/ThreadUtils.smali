.class public Lcom/amazon/nwstd/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static sUiHandler:Landroid/os/Handler;

.field private static final sUiHandlerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/utils/ThreadUtils;->sUiHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private static getUiHandler()Landroid/os/Handler;
    .locals 3

    .line 50
    sget-object v0, Lcom/amazon/nwstd/utils/ThreadUtils;->sUiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/utils/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/amazon/nwstd/utils/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    sget-object v1, Lcom/amazon/nwstd/utils/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isRunningOnUiThread()Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcom/amazon/nwstd/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->isRunningOnUiThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
