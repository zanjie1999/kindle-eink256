.class public Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;
.super Ljava/lang/Object;
.source "KRFExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KRFTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final PRIORITY_UNSPECIFIED:I = -0x1


# instance fields
.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile isCanceled:Z

.field private krfCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private priority:I

.field private runCallbackOnUIThread:Z

.field private sequenceId:J

.field private taskCompleteCallback:Ljava/lang/Runnable;

.field private taskErrorCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 6

    .line 248
    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask$1;

    invoke-direct {v2, p1, p2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask$1;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->isCanceled:Z

    .line 222
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$300(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->sequenceId:J

    const/4 p1, -0x1

    .line 223
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->priority:I

    .line 260
    iput-boolean p5, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->runCallbackOnUIThread:Z

    .line 261
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->krfCallable:Ljava/util/concurrent/Callable;

    .line 262
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    .line 263
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskErrorCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)I
    .locals 0

    .line 208
    iget p0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->priority:I

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;I)I
    .locals 0

    .line 208
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->priority:I

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->future:Ljava/util/concurrent/Future;

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->isCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$500(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->krfCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 314
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->runCallbackOnUIThread:Z

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$600(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 322
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Uncaught exception in krf task!"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskErrorCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$600(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskErrorCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-object v1
.end method

.method public cancelTask()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->cancelTask(Z)V

    return-void
.end method

.method public cancelTask(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->isCanceled:Z

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->future:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 279
    :try_start_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure waiting for the rendering task: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 284
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get() call timed out when trying to cancel rending task"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public compareTo(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "TT;>;)I"
        }
    .end annotation

    .line 332
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->priority:I

    iget v1, p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->priority:I

    sub-int v2, v0, v1

    if-lez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_1
    iget-wide v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->sequenceId:J

    iget-wide v2, p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->sequenceId:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->compareTo(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)I

    move-result p1

    return p1
.end method

.method public getFutureValue()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public setTaskCompleteCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "callback already set, this call will be ignored"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->taskCompleteCallback:Ljava/lang/Runnable;

    return-void
.end method
