.class final Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;
.super Lkotlinx/coroutines/channels/ConflatedChannel;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/ConflatedChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/ReceiveChannel<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final broadcastChannel:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    return-void
.end method


# virtual methods
.method public offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 293
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/ConflatedChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelIdempotent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;->broadcastChannel:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->access$closeSubscriber(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Subscriber;)V

    :cond_0
    return-void
.end method
