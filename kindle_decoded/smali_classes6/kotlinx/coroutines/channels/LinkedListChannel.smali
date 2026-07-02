.class public Lkotlinx/coroutines/channels/LinkedListChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkedListChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkedListChannel.kt\nkotlinx/coroutines/channels/LinkedListChannel\n+ 2 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n35#2,11:78\n1#3:89\n*E\n*S KotlinDebug\n*F\n+ 1 LinkedListChannel.kt\nkotlinx/coroutines/channels/LinkedListChannel\n*L\n64#1,11:78\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method protected final isBufferAlwaysEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final isBufferFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_1

    return-object v1

    .line 32
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_3

    .line 33
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->sendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v0

    if-nez v0, :cond_2

    .line 34
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    .line 35
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_0

    return-object v0

    .line 39
    :cond_3
    instance-of p1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz p1, :cond_4

    return-object v0

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offerInternal result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->getHasReceiveOrClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->describeSendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 52
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_3

    return-object v1

    .line 54
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 55
    :cond_4
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 56
    :cond_5
    instance-of p1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz p1, :cond_6

    return-object v0

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 66
    instance-of v1, p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    if-eqz v1, :cond_1

    .line 68
    iget-object p2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_6

    check-cast p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    iget-object p1, p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;->element:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_8

    .line 82
    check-cast p1, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/Send;

    .line 66
    instance-of v4, v3, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    if-eqz v4, :cond_4

    .line 68
    iget-object v4, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_3

    check-cast v3, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    iget-object v3, v3, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;->element:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v3, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move-object v0, v2

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    return-void

    .line 73
    :cond_7
    throw v0

    .line 82
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
