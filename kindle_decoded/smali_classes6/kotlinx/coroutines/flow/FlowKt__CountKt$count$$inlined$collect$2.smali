.class public final Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__CountKt;->count(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n*L\n1#1,132:1\n31#2,4:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2$1;->label:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 134
    iget-object p1, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;->$i$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 136
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
