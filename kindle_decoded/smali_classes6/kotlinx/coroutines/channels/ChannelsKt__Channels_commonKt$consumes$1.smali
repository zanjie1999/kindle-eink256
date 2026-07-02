.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Channels.common.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_consumes:Lkotlinx/coroutines/channels/ReceiveChannel;


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumes$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumes$1;->$this_consumes:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-void
.end method
