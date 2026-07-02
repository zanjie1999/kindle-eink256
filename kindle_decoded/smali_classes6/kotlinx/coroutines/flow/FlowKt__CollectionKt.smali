.class final synthetic Lkotlinx/coroutines/flow/FlowKt__CollectionKt;
.super Ljava/lang/Object;
.source "Collection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collection.kt\nkotlinx/coroutines/flow/FlowKt__CollectionKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,31:1\n72#2,3:32\n*E\n*S KotlinDebug\n*F\n+ 1 Collection.kt\nkotlinx/coroutines/flow/FlowKt__CollectionKt\n*L\n26#1,3:32\n*E\n"
.end annotation


# direct methods
.method public static final toCollection(Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$$inlined$collect$1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$$inlined$collect$1;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__CollectionKt$toCollection$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method
