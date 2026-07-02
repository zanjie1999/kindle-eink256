.class public final Lkotlinx/coroutines/channels/ArrayBroadcastChannel;
.super Lkotlinx/coroutines/channels/AbstractSendChannel;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n17#2:380\n17#2:382\n17#2:383\n1#3:381\n*E\n*S KotlinDebug\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/channels/ArrayBroadcastChannel\n*L\n94#1:380\n111#1:382\n146#1:383\n*E\n"
.end annotation


# instance fields
.field private volatile synthetic _head:J

.field private volatile synthetic _size:I

.field private volatile synthetic _tail:J

.field private final buffer:[Ljava/lang/Object;

.field private final bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final capacity:I

.field private final subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static final synthetic access$elementAt(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;J)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->elementAt(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTail$p(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)J
    .locals 2

    .line 26
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v0

    return-wide v0
.end method

.method private final cancelInternal(Ljava/lang/Throwable;)Z
    .locals 3

    .line 88
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->cancelInternal$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final checkSubOffers()V
    .locals 5

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    .line 136
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 139
    invoke-static {p0, v1, v1, v0, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final computeMinHead()J
    .locals 5

    .line 200
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    .line 201
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private final elementAt(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    aget-object p1, v0, p2

    return-object p1
.end method

.method private final getHead()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_head:J

    return-wide v0
.end method

.method private final getSize()I
    .locals 1

    .line 60
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_size:I

    return v0
.end method

.method private final getTail()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_tail:J

    return-wide v0
.end method

.method private final setHead(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_head:J

    return-void
.end method

.method private final setSize(I)V
    .locals 0

    .line 61
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_size:I

    return-void
.end method

.method private final setTail(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->_tail:J

    return-void
.end method

.method private final updateHead(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;",
            "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 383
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->setSubHead(J)V

    .line 149
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 150
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_1

    .line 154
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->subscribers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getHead()J

    move-result-wide v2

    invoke-virtual {p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;->getSubHead()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v2, p1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 157
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->computeMinHead()J

    move-result-wide p1

    .line 158
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v2

    .line 159
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getHead()J

    move-result-wide v4

    .line 160
    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v6, p1, v4

    if-gtz v6, :cond_2

    .line 161
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 162
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v6

    :cond_3
    :goto_1
    cmp-long v7, v4, p1

    if-gez v7, :cond_b

    .line 165
    iget-object v7, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v8, v8

    rem-long v8, v4, v8

    long-to-int v9, v8

    aput-object v0, v7, v9

    .line 166
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v6, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    .line 168
    invoke-direct {p0, v4, v5}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setHead(J)V

    add-int/lit8 v6, v6, -0x1

    .line 169
    invoke-direct {p0, v6}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    if-eqz v7, :cond_3

    .line 172
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 173
    instance-of v12, v7, Lkotlinx/coroutines/channels/Closed;

    if-eqz v12, :cond_6

    goto :goto_1

    .line 174
    :cond_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 176
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v12, p1, :cond_7

    const/4 v8, 0x1

    :cond_7
    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 178
    :cond_9
    :goto_3
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget p2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v4, p2

    rem-long v4, v2, v4

    long-to-int p2, v4

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, p2

    add-int/lit8 v6, v6, 0x1

    .line 179
    invoke-direct {p0, v6}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    add-long/2addr v2, v10

    .line 180
    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 188
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 193
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    move-object p1, v0

    move-object p2, p1

    goto/16 :goto_0

    .line 178
    :cond_a
    :try_start_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :cond_b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 143
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead(Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->cancelInternal(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 75
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    const/4 p1, 0x1

    return p1
.end method

.method protected getBufferDebugString()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isBufferAlwaysFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isBufferFull()Z
    .locals 2

    .line 66
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v0

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 380
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v1

    .line 98
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v1, v2, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 99
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v2

    .line 100
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v5, v5

    rem-long v5, v2, v5

    long-to-int v6, v5

    aput-object p1, v4, v6

    add-int/lit8 v1, v1, 0x1

    .line 101
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 102
    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 106
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    :catchall_0
    move-exception p1

    .line 103
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 382
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getSize()I

    move-result v1

    .line 115
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v1, v2, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 117
    :cond_1
    :try_start_2
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result p2

    if-nez p2, :cond_2

    .line 118
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 120
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->getTail()J

    move-result-wide v2

    .line 121
    iget-object p2, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v5, v4

    aput-object p1, p2, v5

    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setSize(I)V

    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    .line 123
    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->setTail(J)V

    .line 124
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 127
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    :catchall_0
    move-exception p1

    .line 124
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;-><init>(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 70
    invoke-static {p0, v0, v1, v2, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;->updateHead$default(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;ILjava/lang/Object;)V

    return-object v0
.end method
