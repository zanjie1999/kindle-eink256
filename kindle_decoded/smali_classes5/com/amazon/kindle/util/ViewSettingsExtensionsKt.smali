.class public final Lcom/amazon/kindle/util/ViewSettingsExtensionsKt;
.super Ljava/lang/Object;
.source "ViewSettingsExtensions.kt"


# direct methods
.method public static final cloneForRecaps(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 5

    const-string v0, "$this$cloneForRecaps"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    .line 12
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSize()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string v3, "fontSize"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSize()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 13
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string v3, "lineSpacing"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 14
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultFontFace(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultMonospaceFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultMonospaceFontFace(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultSansSerifFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultSansSerifFontFace(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string/jumbo v3, "topMargin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 18
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string v3, "leftMargin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 19
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string/jumbo v3, "rightMargin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 20
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    const-string v3, "bottomMargin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 21
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getForceDisableJustification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setForceDisableJustification(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getTextAlignment()Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 23
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    .line 24
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->getPageTransitionPluginStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setPageTransitionPluginStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V

    .line 25
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setVerticalScrollEnabled(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ViewSettings;->isReadingRulerEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/krf/platform/ViewSettings;->setReadingRulerEnabled(Z)V

    return-object v0
.end method
