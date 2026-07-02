.class final Lkotlinx/coroutines/internal/ThreadState;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field public final context:Lkotlin/coroutines/CoroutineContext;

.field private final elements:[Lkotlinx/coroutines/ThreadContextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    .line 16
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    .line 17
    new-array p1, p2, [Lkotlinx/coroutines/ThreadContextElement;

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    return-void
.end method


# virtual methods
.method public final append(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    aput-object p2, v0, v1

    .line 22
    iget-object p2, p0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    if-eqz p1, :cond_0

    aput-object p1, p2, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final restore(Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 27
    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    aget-object v1, v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, p1, v2}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
