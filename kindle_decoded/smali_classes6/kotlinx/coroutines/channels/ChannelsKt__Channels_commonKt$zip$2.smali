.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Channels.common.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TV;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,2200:1\n192#2:2201\n169#2,6:2202\n193#2,2:2208\n179#2:2210\n175#2,3:2211\n*E\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2\n*L\n2194#1:2201\n2194#1,6:2202\n2194#1,2:2208\n2194#1:2210\n2194#1,3:2211\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2"
    f = "Channels.common.kt"
    l = {
        0x8a0,
        0x893,
        0x895
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $other:Lkotlinx/coroutines/channels/ReceiveChannel;

.field final synthetic $this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2192
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, v1

    goto/16 :goto_0

    .line 2199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, p1

    move-object v13, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_3

    :cond_2
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v13, p1

    move-object v12, v1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2193
    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    .line 2194
    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 2208
    :try_start_3
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v9

    move-object v12, v1

    move-object v11, v2

    move-object v10, v7

    move-object v2, v9

    move-object v9, v12

    move-object v7, v6

    :cond_4
    :goto_0
    iput-object v11, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v9, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v8, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v7, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v2, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v6, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput v5, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v2, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 2195
    iput-object v11, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v9, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v8, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v7, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v2, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v13, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput v4, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v10, v12}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_0

    .line 2196
    :cond_7
    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 2197
    iget-object v15, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v13, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v11, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v10, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v9, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v8, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v7, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v2, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v6, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput v3, v12, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v11, v13, v12}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_4

    return-object v0

    .line 2209
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2210
    invoke-static {v8, v7}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 2199
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 2213
    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 2210
    invoke-static {v8, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v3
.end method
