.class Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutorBuilder"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field priority:I

.field threadNum:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adhoc"

    .line 383
    iput-object v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->name:Ljava/lang/String;

    const/4 v0, 0x5

    .line 384
    iput v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->priority:I

    const/4 v0, 0x1

    .line 385
    iput v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->threadNum:I

    return-void
.end method

.method private normalizedName()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kar-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 5

    .line 407
    iget v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->threadNum:I

    new-instance v1, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v3, Lcom/amazon/kindle/util/Named;

    .line 408
    invoke-direct {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->normalizedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/amazon/kindle/util/Prioritized;

    iget v4, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->priority:I

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/Prioritized;-><init>(I)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/amazon/kindle/util/ExceptionHandling;

    new-instance v4, Lcom/amazon/foundation/internal/ThreadPoolManager$KARThreadExceptionHandler;

    invoke-direct {v4}, Lcom/amazon/foundation/internal/ThreadPoolManager$KARThreadExceptionHandler;-><init>()V

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/ExceptionHandling;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    .line 407
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 5

    .line 413
    iget v0, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->threadNum:I

    new-instance v1, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v3, Lcom/amazon/kindle/util/Named;

    .line 414
    invoke-direct {p0}, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->normalizedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/amazon/kindle/util/Prioritized;

    iget v4, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->priority:I

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/Prioritized;-><init>(I)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/amazon/kindle/util/ExceptionHandling;

    new-instance v4, Lcom/amazon/foundation/internal/ThreadPoolManager$KARThreadExceptionHandler;

    invoke-direct {v4}, Lcom/amazon/foundation/internal/ThreadPoolManager$KARThreadExceptionHandler;-><init>()V

    invoke-direct {v3, v4}, Lcom/amazon/kindle/util/ExceptionHandling;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    .line 413
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
    .locals 0

    .line 401
    iput p1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->priority:I

    return-object p0
.end method

.method public withThreadNum(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;
    .locals 0

    .line 395
    iput p1, p0, Lcom/amazon/foundation/internal/ThreadPoolManager$ExecutorBuilder;->threadNum:I

    return-object p0
.end method
