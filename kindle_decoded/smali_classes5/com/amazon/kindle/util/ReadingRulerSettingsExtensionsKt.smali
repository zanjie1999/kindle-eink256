.class public final Lcom/amazon/kindle/util/ReadingRulerSettingsExtensionsKt;
.super Ljava/lang/Object;
.source "ReadingRulerSettingsExtensions.kt"


# direct methods
.method public static final cloneForRecaps(Lcom/amazon/krf/platform/ReadingRulerSettings;)Lcom/amazon/krf/platform/ReadingRulerSettings;
    .locals 2

    const-string v0, "$this$cloneForRecaps"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/amazon/krf/platform/ReadingRulerSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ReadingRulerSettings;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setColor(I)V

    .line 11
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getNumLinesInRuler()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setNumLinesInRuler(I)V

    .line 12
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getStyle()Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setStyle(Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;)V

    .line 13
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getOpacity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setOpacity(F)V

    .line 14
    invoke-virtual {p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->getAllowPositionChange()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amazon/krf/platform/ReadingRulerSettings;->setAllowPositionChange(Z)V

    return-object v0
.end method
