.class public final Lkotlinx/coroutines/test/TestCoroutineContext;
.super Ljava/lang/Object;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,297:1\n1690#2,3:298\n1711#2,3:301\n51#3:304\n52#3,7:306\n20#4:305\n49#5,4:313\n*E\n*S KotlinDebug\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext\n*L\n154#1,3:298\n168#1,3:301\n206#1:304\n206#1,7:306\n206#1:305\n41#1,4:313\n*E\n"
.end annotation


# instance fields
.field private counter:J

.field private final ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

.field private final ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final name:Ljava/lang/String;

.field private final queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "Lkotlinx/coroutines/test/TimedRunnableObsolete;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private final uncaughtExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->name:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    .line 39
    new-instance p1, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;-><init>(Lkotlinx/coroutines/test/TestCoroutineContext;)V

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    .line 313
    new-instance p1, Lkotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1;

    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, v0, p0}, Lkotlinx/coroutines/test/TestCoroutineContext$$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlinx/coroutines/test/TestCoroutineContext;)V

    .line 316
    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 46
    new-instance p1, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$enqueue(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$getQueue$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    return-object p0
.end method

.method public static final synthetic access$getUncaughtExceptions$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$postDelayed(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/test/TestCoroutineContext;->postDelayed(Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processNextEvent(Lkotlinx/coroutines/test/TestCoroutineContext;)J
    .locals 2

    .line 36
    invoke-direct {p0}, Lkotlinx/coroutines/test/TestCoroutineContext;->processNextEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method private final enqueue(Ljava/lang/Runnable;)V
    .locals 10

    .line 187
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    new-instance v9, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    iget-wide v3, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lkotlinx/coroutines/test/TimedRunnableObsolete;-><init>(Ljava/lang/Runnable;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addLast(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V

    return-void
.end method

.method private final postDelayed(Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .locals 7

    .line 190
    new-instance v6, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    iget-wide v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    iget-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long v4, v0, p2

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/test/TimedRunnableObsolete;-><init>(Ljava/lang/Runnable;JJ)V

    .line 192
    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {p1, v6}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addLast(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V

    return-object v6
.end method

.method private final processNextEvent()J
    .locals 2

    .line 196
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/test/TestCoroutineContext;->triggerActions(J)V

    .line 201
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private final triggerActions(J)V
    .locals 6

    .line 206
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    .line 305
    monitor-enter v0

    .line 306
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 307
    check-cast v1, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    .line 206
    iget-wide v3, v1, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    const/4 v1, 0x0

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 307
    :cond_1
    monitor-exit v0

    goto :goto_2

    .line 306
    :cond_2
    monitor-exit v0

    .line 312
    :goto_2
    check-cast v2, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    if-eqz v2, :cond_4

    .line 208
    iget-wide v0, v2, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iput-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    .line 209
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/test/TimedRunnableObsolete;->run()V

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 307
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 66
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    const-string v1, "null cannot be cast to non-null type E"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 72
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestCoroutineContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
