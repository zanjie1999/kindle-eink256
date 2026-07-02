.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;
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
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2200:1\n1#2:2201\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$take$1"
    f = "Channels.common.kt"
    l = {
        0x3ef,
        0x3f0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $n:I

.field final synthetic $this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1003
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    move-object v5, p0

    goto/16 :goto_2

    .line 1013
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1003
    :cond_1
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1004
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    if-nez v1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_3
    if-ltz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    .line 1006
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    .line 1007
    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    :cond_5
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    iput v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    return-object v0

    :cond_6
    move-object v7, v5

    move-object v5, p1

    move-object p1, v6

    move-object v6, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1008
    iput-object v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    iput v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iput v2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    invoke-interface {v5, p1, v6}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object p1, v5

    move-object v5, v6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    .line 1011
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1013
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1005
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is less than zero."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
