.class public Lcom/amazon/nwstd/utils/RunnableHandler;
.super Ljava/lang/Object;
.source "RunnableHandler.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/utils/RunnableHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/nwstd/utils/RunnableHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/nwstd/utils/RunnableHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public removeCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/nwstd/utils/RunnableHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/nwstd/utils/RunnableHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
