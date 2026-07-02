.class Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;
.super Ljava/lang/Object;
.source "AsyncListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/AsyncListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundLoadRunnable"
.end annotation


# instance fields
.field private final index:I

.field final synthetic this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/loader/AsyncListLoader;I)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;)I
    .locals 0

    .line 380
    iget p0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    return p0
.end method

.method private loadValueAndNotify()V
    .locals 4

    .line 418
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->safeLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 419
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$200(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 425
    :try_start_0
    iget v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    iget-object v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v3}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$300(Lcom/amazon/xray/model/loader/AsyncListLoader;)I

    move-result v3

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    iget-object v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v3}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$400(Lcom/amazon/xray/model/loader/AsyncListLoader;)I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    iget v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    invoke-static {v2, v3, v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$500(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V

    .line 429
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$600(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$900(Lcom/amazon/xray/model/loader/AsyncListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;-><init>(Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 426
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 429
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private safeLoadInBackground()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 452
    :try_start_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$1000(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;

    move-result-object v0

    iget v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    invoke-interface {v0, v1}, Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;->loadInBackground(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 457
    sget-object v1, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception loading value [index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->loadValueAndNotify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v1}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$000(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$100(Lcom/amazon/xray/model/loader/AsyncListLoader;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 401
    iget-object v2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v2}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$000(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 402
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    :goto_0
    sget-object v1, Lcom/amazon/xray/model/loader/AsyncListLoader;->TAG:Ljava/lang/String;

    const-string v2, "Exception in background load runnable"

    invoke-static {v1, v2, v0}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
