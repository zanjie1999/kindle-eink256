.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
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
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,2200:1\n192#2:2201\n169#2,6:2202\n193#2,2:2208\n179#2:2210\n175#2,3:2211\n*E\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1\n*L\n1403#1:2201\n1403#1,6:2202\n1403#1,2:2208\n1403#1:2210\n1403#1,3:2211\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1"
    f = "Channels.common.kt"
    l = {
        0x8a0,
        0x57c,
        0x57c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1402
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v9

    move-object v9, p0

    goto :goto_0

    .line 1406
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1402
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v10, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, p0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    move-object v7, v8

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1403
    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 2208
    :try_start_3
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    move-object v8, p0

    move-object v9, v8

    move-object v6, v2

    :goto_0
    iput-object p1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput v5, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v1, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_4

    return-object v0

    :cond_4
    move-object v13, v9

    move-object v9, p1

    move-object p1, v10

    move-object v10, v13

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1404
    iget-object v11, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    iput-object v9, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v8, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v7, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v6, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v1, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput v4, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    const/4 v12, 0x6

    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v11, p1, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v11, 0x7

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v10

    :goto_2
    :try_start_4
    iput-object v10, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v9, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v7, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v6, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v2, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput v3, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v1, p1, v11}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object p1, v10

    move-object v9, v11

    goto :goto_0

    .line 2209
    :cond_7
    :try_start_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2210
    invoke-static {v7, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 1406
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    .line 2213
    :goto_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 2210
    invoke-static {v7, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0
.end method
