.class public final Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;
.super Ljava/lang/Object;
.source "FlowExceptions.common.kt"


# direct methods
.method public static final checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/internal/AbortFlowException;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;->getOwner()Lkotlinx/coroutines/flow/FlowCollector;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    throw p0
.end method
