.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;,
        Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n299#2,3:309\n299#2,3:312\n299#2,3:321\n299#2,3:326\n299#2,3:331\n299#2,3:341\n299#2,3:344\n477#3,4:315\n468#3,2:319\n468#3,2:324\n468#3,2:329\n499#3,4:335\n155#3,2:339\n1#4:334\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n91#1,3:309\n92#1,3:312\n107#1,3:321\n167#1,3:326\n200#1,3:331\n231#1,3:341\n247#1,3:344\n95#1,4:315\n105#1,2:319\n165#1,2:324\n199#1,2:329\n217#1,4:335\n223#1,2:339\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

.field private static final synthetic _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field private synthetic array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private final capacity:I

.field private final mask:I

.field private final singleConsumer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    new-instance v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 288
    new-instance v1, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "REMOVE_FROZEN"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 80
    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 86
    iget p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    const/4 v0, 0x0

    const v1, 0x3fffffff    # 1.9999999f

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Check failed."

    if-eqz p1, :cond_3

    .line 87
    iget p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    iget v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final allocateNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v2, v1

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v3, p1

    const/16 v1, 0x1e

    shr-long/2addr v3, v1

    long-to-int v1, v3

    .line 233
    :goto_0
    iget v3, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int v4, v2, v3

    and-int v5, v1, v3

    if-eq v4, v5, :cond_1

    .line 235
    iget-object v4, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    .line 236
    :goto_1
    iget-object v4, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v5, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-virtual {v1, p1, p2, v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->wo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    return-object v0
.end method

.method private final allocateOrGetNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 340
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v0, :cond_0

    return-object v0

    .line 225
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->allocateNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    iget v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    if-ne v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final markFrozen()J
    .locals 9

    .line 336
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    return-wide v2

    :cond_1
    or-long v6, v2, v0

    .line 338
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method private final removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 330
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v6, v0

    .line 201
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v6, p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_4

    .line 204
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object p1

    return-object p1

    .line 206
    :cond_4
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v1, v2, v3, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr p2, v6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 320
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 106
    sget-object p1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->addFailReason(J)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v8, 0x0

    shr-long/2addr v0, v8

    long-to-int v1, v0

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v0, 0x1e

    shr-long/2addr v4, v0

    long-to-int v9, v4

    .line 108
    iget v10, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    add-int/lit8 v0, v9, 0x2

    and-int/2addr v0, v10

    and-int v4, v1, v10

    const/4 v5, 0x1

    if-ne v0, v4, :cond_2

    return v5

    .line 114
    :cond_2
    iget-boolean v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    const v4, 0x3fffffff    # 1.9999999f

    if-nez v0, :cond_4

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v11, v9, v10

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 120
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    const/16 v2, 0x400

    if-lt v0, v2, :cond_3

    sub-int/2addr v9, v1

    and-int v1, v9, v4

    shr-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_0

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v0, v9, 0x1

    and-int/2addr v0, v4

    .line 127
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v4, v2, v3, v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateTail(JI)J

    move-result-wide v4

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v9, v10

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, p0

    .line 133
    :goto_0
    iget-wide v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    cmp-long v3, v1, v6

    if-nez v3, :cond_5

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    invoke-direct {v0, v9, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return v8
.end method

.method public final close()Z
    .locals 10

    .line 316
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    return v6

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long v4, v2, v0

    .line 318
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getSize()I
    .locals 6

    .line 92
    iget-wide v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 7

    .line 91
    iget-wide v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->markFrozen()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->allocateOrGetNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    return-object v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 10

    .line 325
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 166
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v0

    :cond_1
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v6, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v1, v0

    .line 168
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v0

    and-int v4, v6, v0

    const/4 v7, 0x0

    if-ne v1, v4, :cond_2

    return-object v7

    .line 169
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 172
    iget-boolean v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-eqz v0, :cond_0

    return-object v7

    .line 177
    :cond_3
    instance-of v0, v8, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v0, :cond_4

    return-object v7

    :cond_4
    add-int/lit8 v0, v6, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v9, v0, v1

    .line 180
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v1, v2, v3, v9}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v6

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v8

    .line 187
    :cond_5
    iget-boolean v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, p0

    .line 192
    :goto_1
    invoke-direct {v0, v6, v9}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    return-object v8
.end method
