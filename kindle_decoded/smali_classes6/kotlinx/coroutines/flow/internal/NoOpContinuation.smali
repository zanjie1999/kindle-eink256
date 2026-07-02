.class final Lkotlinx/coroutines/flow/internal/NoOpContinuation;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/internal/NoOpContinuation;

.field private static final context:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lkotlinx/coroutines/flow/internal/NoOpContinuation;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/NoOpContinuation;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/NoOpContinuation;->INSTANCE:Lkotlinx/coroutines/flow/internal/NoOpContinuation;

    .line 135
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sput-object v0, Lkotlinx/coroutines/flow/internal/NoOpContinuation;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 135
    sget-object v0, Lkotlinx/coroutines/flow/internal/NoOpContinuation;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
