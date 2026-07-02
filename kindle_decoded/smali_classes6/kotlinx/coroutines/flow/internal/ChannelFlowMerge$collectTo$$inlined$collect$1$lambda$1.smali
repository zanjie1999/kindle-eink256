.class final Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1"
    f = "Merge.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $inner:Lkotlinx/coroutines/flow/Flow;

.field label:I

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->$inner:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->$inner:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;

    invoke-direct {p1, v0, p2, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->$inner:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;

    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/internal/SendingCollector;

    iput v2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 71
    :cond_2
    :goto_0
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;

    iget-object p1, p1, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;->$semaphore$inlined:Lkotlinx/coroutines/sync/Semaphore;

    invoke-interface {p1}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 71
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1;->$semaphore$inlined:Lkotlinx/coroutines/sync/Semaphore;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    throw p1
.end method
