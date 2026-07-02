.class public Lcom/amazon/kindle/pagecurl/TouchEventHandler;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"


# instance fields
.field private curlView:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/pagecurl/TouchEventHandler;)Lcom/amazon/kindle/pagecurl/CurlView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 17
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/pagecurl/TouchEventHandler$1;-><init>(Lcom/amazon/kindle/pagecurl/TouchEventHandler;Landroid/view/MotionEvent;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/TouchEventHandler;->curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
