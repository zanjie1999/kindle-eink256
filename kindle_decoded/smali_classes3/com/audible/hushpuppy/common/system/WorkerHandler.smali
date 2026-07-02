.class public final Lcom/audible/hushpuppy/common/system/WorkerHandler;
.super Ljava/lang/Object;
.source "WorkerHandler.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/system/IWorkerHandler;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/system/WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/system/WorkerHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/system/WorkerHandler;-><init>(Landroid/os/HandlerThread;)V

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handlerThread can\'t be null."

    .line 51
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerHandler;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable can\'t be null"

    .line 60
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable can\'t be null"

    .line 67
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable can\'t be null"

    .line 74
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
