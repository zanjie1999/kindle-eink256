.class public final Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TryPollDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
        "Lkotlinx/coroutines/channels/Send;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel$TryPollDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n1#2:1152\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method protected failure(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1

    .line 709
    instance-of v0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    instance-of p1, p1, Lkotlinx/coroutines/channels/Send;

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPrepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;
    .locals 1

    .line 716
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v0, :cond_5

    check-cast v0, Lkotlinx/coroutines/channels/Send;

    .line 717
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 718
    sget-object v0, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object v0

    .line 719
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 717
    :cond_4
    sget-object p1, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-object p1

    .line 716
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 725
    check-cast p1, Lkotlinx/coroutines/channels/Send;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
