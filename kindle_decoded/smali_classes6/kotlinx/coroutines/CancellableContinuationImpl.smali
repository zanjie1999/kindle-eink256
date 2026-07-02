.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,566:1\n218#1,2:573\n220#1,8:576\n218#1,10:584\n1#2:567\n13#3:568\n22#3:575\n155#4,2:569\n155#4,2:571\n351#4,2:594\n351#4,2:596\n155#4,2:602\n155#4,2:604\n155#4,2:606\n57#5,2:598\n57#5,2:600\n57#5,2:608\n*E\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n234#1,2:573\n234#1,8:576\n237#1,10:584\n132#1:568\n234#1:575\n164#1,2:569\n196#1,2:571\n258#1,2:594\n268#1,2:596\n307#1,2:602\n397#1,2:604\n432#1,2:606\n283#1,2:598\n293#1,2:600\n509#1,2:608\n*E\n"
.end annotation


# static fields
.field private static final synthetic _decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final delegate:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 31
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_2
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 62
    iput v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .line 73
    sget-object p1, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 575
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 579
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 580
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final cancelLater(Ljava/lang/Throwable;)Z
    .locals 3

    .line 190
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v0}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->postponeCancellation(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private final checkCompleted()Z
    .locals 3

    .line 144
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    .line 145
    iget v1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->checkPostponedCancellation(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 150
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final detachChildIfNonResuable()V
    .locals 1

    .line 460
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    :cond_0
    return-void
.end method

.method private final dispatchResume(I)V
    .locals 1

    .line 367
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/DispatchedTaskKt;->dispatch(Lkotlinx/coroutines/DispatchedTask;I)V

    return-void
.end method

.method private final getParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method private final getStateDebugRepresentation()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 90
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method

.method private final isReusable()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->isReusable(Lkotlinx/coroutines/CancellableContinuationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/CancelHandler;"
        }
    .end annotation

    .line 364
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 605
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 399
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    .line 400
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/NotCompleted;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 401
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 403
    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void

    .line 406
    :cond_1
    instance-of p2, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz p2, :cond_3

    .line 412
    check-cast v0, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CancelledContinuation;->makeResumed()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 414
    iget-object p1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 419
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 395
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/NotCompleted;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 379
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_5

    .line 380
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 381
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 384
    :cond_5
    invoke-static {p3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result p3

    if-nez p3, :cond_6

    if-nez p5, :cond_6

    goto :goto_3

    :cond_6
    if-nez p4, :cond_8

    .line 385
    instance-of p3, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz p3, :cond_7

    instance-of p3, p1, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz p3, :cond_8

    :cond_7
    if-eqz p5, :cond_a

    .line 388
    :cond_8
    new-instance p3, Lkotlinx/coroutines/CompletedContinuation;

    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CancelHandler;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, p3

    :cond_a
    :goto_3
    return-object p2
.end method

.method private final setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final setupCancellation()V
    .locals 7

    .line 127
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->checkCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v4, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 130
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    .line 137
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 139
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    :cond_2
    return-void
.end method

.method private final tryResume()Z
    .locals 4

    .line 597
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_2
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 607
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 434
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    .line 435
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/NotCompleted;

    iget v5, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 436
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 438
    sget-object p1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    .line 440
    :cond_1
    instance-of p3, v0, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 441
    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p3, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-ne p3, p2, :cond_4

    .line 442
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v0, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 443
    :cond_3
    :goto_1
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    :cond_4
    return-object v1
.end method

.method private final trySuspend()Z
    .locals 3

    .line 595
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 3

    .line 237
    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancelHandlerBase;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 589
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 590
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 245
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 246
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 4

    .line 572
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 197
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CancelledContinuation;

    instance-of v2, v0, Lkotlinx/coroutines/CancelHandler;

    invoke-direct {v1, p0, p1, v2}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 200
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 202
    :cond_2
    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    .line 204
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 205
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    .line 570
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 166
    instance-of v0, p1, Lkotlinx/coroutines/NotCompleted;

    if-nez v0, :cond_4

    .line 167
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_1

    return-void

    .line 168
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_3

    .line 169
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    .line 170
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v1

    .line 171
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, p0, p2}, Lkotlinx/coroutines/CompletedContinuation;->invokeHandlers(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Throwable;)V

    return-void

    .line 169
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_3
    sget-object v8, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 166
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 1

    .line 485
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 486
    :cond_2
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void
.end method

.method public final detachChild$kotlinx_coroutines_core()V
    .locals 1

    .line 468
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 470
    :cond_0
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 156
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 0

    .line 255
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 509
    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 608
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3

    .line 279
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setupCancellation()V

    .line 280
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->trySuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 283
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 598
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    throw v0

    .line 288
    :cond_2
    iget v1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_4

    .line 290
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 291
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 292
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 600
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    throw v1

    .line 296
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 502
    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public initCancellability()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setupCancellation()V

    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;

    move-result-object v8

    .line 603
    :cond_0
    iget-object v9, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 309
    instance-of v0, v9, Lkotlinx/coroutines/Active;

    if-eqz v0, :cond_1

    .line 310
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_1
    instance-of v0, v9, Lkotlinx/coroutines/CancelHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 313
    instance-of v0, v9, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_6

    .line 319
    move-object v2, v9

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    instance-of v2, v9, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    move-object v9, v1

    .line 326
    :cond_2
    check-cast v9, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v9, :cond_3

    iget-object v1, v9, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_3
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 319
    :cond_5
    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v1

    .line 330
    :cond_6
    instance-of v0, v9, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_a

    .line 334
    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v2, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-nez v2, :cond_9

    .line 336
    instance-of v1, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v1, :cond_7

    return-void

    .line 337
    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 339
    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    .line 342
    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v0

    .line 343
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_9
    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v1

    .line 351
    :cond_a
    instance-of v0, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v0, :cond_b

    return-void

    .line 352
    :cond_b
    new-instance v10, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 353
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_c
    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v1
.end method

.method public isActive()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected nameString()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelLater(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 214
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    return-void
.end method

.method public final resetStateReusable()Z
    .locals 4

    .line 107
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_5
    :goto_3
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 110
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_8

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    return v2

    .line 116
    :cond_8
    iput v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .line 117
    sget-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return v1
.end method

.method public resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 303
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_1

    .line 491
    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 300
    invoke-static {p1, p0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getStateDebugRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .line 481
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1
.end method
