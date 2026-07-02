.class public final Lcom/amazon/kindle/seekbar/LinearMapperKt;
.super Ljava/lang/Object;
.source "LinearMapper.kt"


# direct methods
.method public static final synthetic access$middle(Lkotlin/ranges/ClosedFloatingPointRange;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazon/kindle/seekbar/LinearMapperKt;->middle(Lkotlin/ranges/ClosedFloatingPointRange;)F

    move-result p0

    return p0
.end method

.method private static final middle(Lkotlin/ranges/ClosedFloatingPointRange;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 259
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method
