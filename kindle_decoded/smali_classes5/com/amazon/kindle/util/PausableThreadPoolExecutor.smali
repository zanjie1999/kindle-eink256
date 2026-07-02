.class public Lcom/amazon/kindle/util/PausableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PausableThreadPoolExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;


# instance fields
.field private volatile isPaused:Z

.field private final pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final unpausedCondition:Ljava/util/concurrent/locks/Condition;

.field private whenToUnpause:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->Factory:Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "workQueue"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 38
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->unpausedCondition:Ljava/util/concurrent/locks/Condition;

    .line 40
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->whenToUnpause:Ljava/util/Calendar;

    return-void
.end method

.method public static synthetic pause$default(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 80
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause(JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pause"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4

    .line 44
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 45
    iget-boolean p2, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->whenToUnpause:Ljava/util/Calendar;

    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->unpausedCondition:Ljava/util/concurrent/locks/Condition;

    iget-object v2, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->whenToUnpause:Ljava/util/Calendar;

    const-string/jumbo v3, "whenToUnpause"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_2
    :goto_1
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    nop

    if-eqz p1, :cond_2

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 57
    :goto_2
    :try_start_3
    iput-boolean v0, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 49
    :goto_3
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_4
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public isPaused()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z

    return v0
.end method

.method public pause()V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause$default(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)V

    return-void
.end method

.method public final pause(J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause$default(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)V

    return-void
.end method

.method public pause(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    .line 82
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 84
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 88
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object p3

    const/16 v1, 0xe

    long-to-int p2, p1

    .line 89
    invoke-virtual {p3, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 90
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 88
    iput-object p3, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->whenToUnpause:Ljava/util/Calendar;

    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public resume()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 109
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused:Z

    .line 110
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->whenToUnpause:Ljava/util/Calendar;

    .line 111
    iget-object v1, p0, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->unpausedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 112
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
