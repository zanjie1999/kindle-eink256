.class public Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;
.super Lcom/audible/hushpuppy/common/system/AbstractDebouncer;
.source "SingleElementQueueHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;->createHandlerFromNewHandlerThread()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static createHandlerFromNewHandlerThread()Landroid/os/Handler;
    .locals 2

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method


# virtual methods
.method protected final handlePost(Ljava/lang/Runnable;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
