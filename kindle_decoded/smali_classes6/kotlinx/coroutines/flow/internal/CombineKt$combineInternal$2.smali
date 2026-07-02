.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 22
    iget v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v11, :cond_2

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    :goto_0
    iget v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v2, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/Channel;

    iget-object v4, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v4

    move-object v4, v6

    goto/16 :goto_6

    :cond_2
    iget v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v2, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/Channel;

    iget-object v4, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object v8, v7

    move-object v7, v4

    move-object v4, v6

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    iget-object v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v15, v0

    if-nez v15, :cond_4

    .line 24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 25
    :cond_4
    new-array v14, v15, [Ljava/lang/Object;

    .line 26
    sget-object v20, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v19, v14

    invoke-static/range {v19 .. v24}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 27
    invoke-static {v15, v1, v1, v0, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v19

    .line 28
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 32
    new-instance v20, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v3, v19

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;ILkotlinx/coroutines/channels/Channel;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    move-object/from16 v12, v18

    move-object v3, v13

    move-object/from16 v13, v16

    move-object v4, v14

    move-object/from16 v14, v17

    move v5, v15

    move-object/from16 v15, v20

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    add-int/lit8 v12, v2, 0x1

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    goto :goto_1

    :cond_5
    move-object v4, v14

    move v5, v15

    .line 51
    new-array v0, v5, [B

    move v1, v5

    move-object v3, v6

    move-object/from16 v2, v19

    :goto_2
    add-int/2addr v8, v11

    int-to-byte v4, v8

    .line 57
    iput-object v14, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v1, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v4, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v11, v3, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-static {v2, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->receiveOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_6

    return-object v7

    :cond_6
    move-object v8, v7

    move-object v7, v14

    move-object/from16 v25, v2

    move-object v2, v0

    move v0, v4

    move-object v4, v3

    move-object/from16 v3, v25

    :goto_3
    check-cast v5, Lkotlin/collections/IndexedValue;

    if-eqz v5, :cond_e

    .line 59
    :goto_4
    invoke-virtual {v5}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v12

    .line 61
    aget-object v13, v7, v12

    .line 62
    invoke-virtual {v5}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v7, v12

    .line 63
    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v13, v5, :cond_7

    add-int/lit8 v1, v1, -0x1

    .line 66
    :cond_7
    aget-byte v5, v2, v12

    if-ne v5, v0, :cond_8

    goto :goto_5

    :cond_8
    int-to-byte v5, v0

    .line 67
    aput-byte v5, v2, v12

    .line 68
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/collections/IndexedValue;

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 77
    iget-object v5, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    if-nez v5, :cond_c

    .line 79
    iget-object v5, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v12, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    if-eqz v7, :cond_b

    iput-object v7, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v1, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v0, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v10, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v5, v12, v7, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_a

    return-object v8

    :cond_a
    :goto_6
    move-object v14, v7

    move-object v7, v8

    move v8, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eqz v7, :cond_d

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v12, v7

    move-object v13, v5

    .line 81
    invoke-static/range {v12 .. v18}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 82
    iget-object v12, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v13, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v7, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput v1, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v0, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v9, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v12, v13, v5, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_a

    return-object v8

    .line 81
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T?>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
