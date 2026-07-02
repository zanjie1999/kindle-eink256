.class public final Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;
.super Lcom/amazon/kindle/seekbar/BaseLinearMapper;
.source "LinearMapper.kt"


# instance fields
.field private bottomRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

.field private domainEnd:F

.field private domainStart:F

.field private mask:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mirror:Z

.field private rangeEnd:F

.field private rangeStart:F

.field private topRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;-><init>(FFFFZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFZLkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFZ",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainStart:F

    iput p2, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainEnd:F

    iput p3, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeStart:F

    iput p4, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeEnd:F

    iput-boolean p5, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mirror:Z

    iput-object p6, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 171
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->updateMaskMappers()V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p8, 0x0

    goto :goto_0

    :cond_0
    move p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move v3, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object p7, p6

    move-object p1, p0

    move p2, p8

    move p3, v1

    move p4, v2

    move p5, v0

    move p6, v3

    .line 164
    invoke-direct/range {p1 .. p7}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;-><init>(FFFFZLkotlin/ranges/ClosedFloatingPointRange;)V

    return-void
.end method

.method private final convertPostMaskToPreMask(F)F
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-nez v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/amazon/kindle/seekbar/LinearMapperKt;->access$middle(Lkotlin/ranges/ClosedFloatingPointRange;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->topRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    const-string v3, "topRangeMapper"

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeEnd()F

    move-result v2

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->unmap(F)F

    move-result p1

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->bottomRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    const-string v3, "bottomRangeMapper"

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/LinearMapper;->getRangeStart()F

    move-result v2

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->unmap(F)F

    move-result p1

    add-float/2addr p1, v1

    :goto_0
    return p1

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final convertPreMaskToPostMask(F)F
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v0}, Lcom/amazon/kindle/seekbar/LinearMapperKt;->access$middle(Lkotlin/ranges/ClosedFloatingPointRange;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->topRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->map(F)F

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "topRangeMapper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->bottomRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->map(F)F

    move-result p1

    :goto_0
    return p1

    :cond_3
    const-string p1, "bottomRangeMapper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateMaskMappers()V
    .locals 18

    move-object/from16 v0, p0

    .line 212
    new-instance v9, Lcom/amazon/kindle/seekbar/LinearMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v2

    iget-object v1, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/amazon/kindle/seekbar/LinearMapperKt;->access$middle(Lkotlin/ranges/ClosedFloatingPointRange;)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v1

    :goto_0
    move v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v4

    iget-object v1, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v1

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>(FFFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->topRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    .line 213
    new-instance v1, Lcom/amazon/kindle/seekbar/LinearMapper;

    iget-object v2, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/amazon/kindle/seekbar/LinearMapperKt;->access$middle(Lkotlin/ranges/ClosedFloatingPointRange;)F

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v2

    :goto_2
    move v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v12

    iget-object v2, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v2

    :goto_3
    move v13, v2

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>(FFFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->bottomRangeMapper:Lcom/amazon/kindle/seekbar/LinearMapper;

    return-void
.end method


# virtual methods
.method public final displayMask(Lkotlin/ranges/ClosedFloatingPointRange;)Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 187
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->updateMaskMappers()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object p1, p1, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDomainEnd()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainEnd:F

    return v0
.end method

.method public getDomainStart()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainStart:F

    return v0
.end method

.method public getMirror()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mirror:Z

    return v0
.end method

.method public getRangeEnd()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeEnd:F

    return v0
.end method

.method public getRangeStart()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeStart:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected map(FZ)F
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainWidth()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeWidth()F

    move-result v0

    mul-float p1, p1, v0

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v0

    add-float/2addr v0, p1

    .line 193
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->convertPreMaskToPostMask(F)F

    move-result p1

    if-eqz p2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    :cond_1
    return p1
.end method

.method public bridge synthetic range(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->range(FF)Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    return-object p0
.end method

.method public range(FF)Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->range(FF)Lcom/amazon/kindle/seekbar/BaseLinearMapper;

    .line 176
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->updateMaskMappers()V

    return-object p0
.end method

.method public bridge synthetic range(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->range(FF)Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    return-object p0
.end method

.method public setDomainEnd(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainEnd:F

    return-void
.end method

.method public setDomainStart(F)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->domainStart:F

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mirror:Z

    return-void
.end method

.method public setRangeEnd(F)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeEnd:F

    return-void
.end method

.method public setRangeStart(F)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->rangeStart:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMaskAwareLinearMapper(domainStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", domainEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rangeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->mask:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unmap(FZ)F
    .locals 1

    .line 198
    invoke-direct {p0, p1}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->convertPostMaskToPreMask(F)F

    move-result p1

    .line 199
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getRangeStart()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getRangeWidth()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/BaseLinearMapper;->getDomainWidth()F

    move-result v0

    mul-float p1, p1, v0

    .line 200
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result v0

    add-float/2addr v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainEnd()F

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->getDomainStart()F

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :cond_1
    return v0
.end method
