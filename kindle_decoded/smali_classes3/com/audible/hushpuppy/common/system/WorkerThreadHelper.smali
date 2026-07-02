.class public final Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;
.super Ljava/lang/Object;
.source "WorkerThreadHelper.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/system/IWorkerThreadHelper;


# static fields
.field private static final INVALID_DELAY_INTERVAL:I

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkerThreadName cannot be null!"

    invoke-static {p1, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;-><init>(Ljava/lang/String;ILandroid/os/HandlerThread;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/os/HandlerThread;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Worker thread name cannot be Empty!"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    if-gez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Delay timer for the thread is invalid, has to be greated than zero!"

    .line 56
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    const-string v0, "HandlerThread cannot be null!"

    .line 58
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 59
    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->threadName:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Starting the worker thread with name: %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handler:Landroid/os/Handler;

    .line 65
    new-instance p1, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    iget-object p3, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handler:Landroid/os/Handler;

    invoke-direct {p1, p3, p2}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>(Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    return-void
.end method


# virtual methods
.method public getHandlerDebouncerForWorkerThread()Lcom/audible/hushpuppy/common/system/HandlerDebouncer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    return-object v0
.end method

.method public getHandlerForWorkerThread()Landroid/os/Handler;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/WorkerThreadHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method
