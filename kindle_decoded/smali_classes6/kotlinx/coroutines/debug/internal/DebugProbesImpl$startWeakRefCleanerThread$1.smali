.class final Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugProbesImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 101
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-static {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->access$getCallerInfoCache$p(Lkotlinx/coroutines/debug/internal/DebugProbesImpl;)Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->runWeakRefQueueCleaningLoopUntilInterrupted()V

    return-void
.end method
