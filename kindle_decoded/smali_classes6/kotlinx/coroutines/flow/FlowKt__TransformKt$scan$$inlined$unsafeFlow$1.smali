.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,112:1\n88#2,3:113\n94#2:119\n72#3,3:116\n*E\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n90#1,3:116\n*E\n"
.end annotation


# instance fields
.field final synthetic $initial$inlined:Ljava/lang/Object;

.field final synthetic $operation$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_scan$inlined:Lkotlinx/coroutines/flow/Flow;


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;->$initial$inlined:Ljava/lang/Object;

    iput-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 115
    :goto_1
    iget-object v2, v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;->$this_scan$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 116
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$lambda$1;

    invoke-direct {v5, p1, p2, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$scan$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 109
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
