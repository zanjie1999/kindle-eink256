.class public final Lcom/amazon/android/util/LazyKt;
.super Ljava/lang/Object;
.source "Lazy.kt"


# direct methods
.method public static final lazyWith(Lkotlin/jvm/functions/Function1;)Lcom/amazon/android/util/LazyWith;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;)",
            "Lcom/amazon/android/util/LazyWith<",
            "TT;TA;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/amazon/android/util/SynchronizedLazyWith;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/amazon/android/util/SynchronizedLazyWith;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
