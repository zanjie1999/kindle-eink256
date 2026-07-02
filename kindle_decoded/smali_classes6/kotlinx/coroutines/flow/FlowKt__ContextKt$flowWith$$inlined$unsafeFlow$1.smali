.class public final Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,112:1\n328#2:113\n329#2,2:115\n333#2:120\n259#3:114\n72#4,3:117\n*E\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n*L\n328#1:114\n330#1,3:117\n*E\n"
.end annotation


# instance fields
.field final synthetic $bufferSize$inlined:I

.field final synthetic $builder$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $flowContext$inlined:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $source$inlined:Lkotlinx/coroutines/flow/Flow;


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 114
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 113
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$source$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$bufferSize$inlined:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$builder$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$flowContext$inlined:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$bufferSize$inlined:I

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 117
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 109
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
