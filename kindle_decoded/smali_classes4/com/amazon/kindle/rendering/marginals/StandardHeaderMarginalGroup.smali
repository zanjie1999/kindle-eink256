.class public final Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;
.super Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;
.source "MarginalGroupImplementations.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 89
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 88
    new-instance p5, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;

    invoke-direct {p5}, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;-><init>()V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V

    return-void
.end method
