.class Lkotlin/ranges/RangesKt__RangesKt;
.super Ljava/lang/Object;
.source "Ranges.kt"


# direct methods
.method public static rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    return-object v0
.end method
