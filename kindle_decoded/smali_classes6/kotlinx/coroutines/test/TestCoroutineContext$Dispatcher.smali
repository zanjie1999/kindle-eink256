.class final Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;
.super Lkotlinx/coroutines/EventLoop;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/test/TestCoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,297:1\n17#2:298\n*E\n*S KotlinDebug\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n*L\n228#1:298\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/test/TestCoroutineContext;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/test/TestCoroutineContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoop;-><init>()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-static {p0, p1, v0, v1}, Lkotlinx/coroutines/EventLoop;->incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-static {p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$enqueue(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 234
    iget-object p4, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-static {p4, p3, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$postDelayed(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;

    move-result-object p1

    .line 235
    new-instance p2, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;-><init>(Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;Lkotlinx/coroutines/test/TimedRunnableObsolete;)V

    return-object p2
.end method

.method public processNextEvent()J
    .locals 2

    .line 242
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$processNextEvent(Lkotlinx/coroutines/test/TestCoroutineContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    .line 298
    new-instance v1, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;

    invoke-direct {v1, p0, p3}, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 228
    invoke-static {v0, v1, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$postDelayed(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;

    return-void
.end method

.method public shouldBeProcessedFromContext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatcher("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
