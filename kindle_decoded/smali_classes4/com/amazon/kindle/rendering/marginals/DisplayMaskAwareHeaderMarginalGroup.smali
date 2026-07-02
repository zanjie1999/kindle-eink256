.class public final Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;
.super Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;
.source "MarginalGroupImplementations.kt"


# instance fields
.field private final displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private final displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;


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

    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    invoke-interface {p5}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 112
    invoke-interface {p5}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 115
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 108
    new-instance p5, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;

    invoke-direct {p5}, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;-><init>()V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V

    return-void
.end method

.method private final updateMaskViewSettings()V
    .locals 5

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getData()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getDisplayMaskWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 169
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 170
    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getLeftMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 171
    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getRightMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v4

    :cond_2
    add-float/2addr v4, v0

    invoke-direct {v2, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    return-void
.end method


# virtual methods
.method public createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/Marginal;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "range"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    const-string v3, "range.firstPosition"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 138
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getData()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getDisplayMaskWidth()I

    move-result v1

    if-gtz v1, :cond_1

    .line 140
    invoke-super/range {p0 .. p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 144
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getHasTitle()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getData()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 146
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getData()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getHeaderTextOnly()Ljava/util/List;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v11, v2

    goto :goto_2

    :cond_5
    move-object v11, v1

    .line 151
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v2

    .line 153
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getFactory()Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    move-result-object v7

    sget-object v8, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v9, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v10, v0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v2, "leftText"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v7 .. v13}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v2

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getFactory()Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    move-result-object v12

    sget-object v13, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v14, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v15, v0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v3, "rightText"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    move-object/from16 v16, v1

    invoke-interface/range {v12 .. v18}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setCenterMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/Marginal;

    aput-object v2, v3, v5

    aput-object v1, v3, v6

    .line 160
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 135
    :cond_7
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "leftMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskLeftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 124
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->updateMaskViewSettings()V

    return-void
.end method

.method public setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "rightMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->displayMaskRightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 130
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;->updateMaskViewSettings()V

    return-void
.end method
