.class public final Lcom/amazon/kindle/util/AtomicBoolean_ExtensionsKt;
.super Ljava/lang/Object;
.source "AtomicBoolean+Extensions.kt"


# direct methods
.method public static final getAndNegate(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 2

    const-string v0, "$this$getAndNegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method
