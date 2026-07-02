.class final Lkotlinx/coroutines/LazyDeferredCoroutine;
.super Lkotlinx/coroutines/DeferredCoroutine;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DeferredCoroutine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected onStart()V
    .locals 1

    .line 114
    iget-object v0, p0, Lkotlinx/coroutines/LazyDeferredCoroutine;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    return-void
.end method
