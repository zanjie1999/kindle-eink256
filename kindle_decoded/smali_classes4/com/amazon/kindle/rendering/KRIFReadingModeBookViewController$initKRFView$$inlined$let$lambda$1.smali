.class final Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "KRIFReadingModeBookViewController.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->initKRFView(Lcom/amazon/krf/platform/Position;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const-string v0, "view"

    .line 496
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const-string v1, "view.rootWindowInsets"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 499
    :cond_1
    new-instance p1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v0, v0

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p1, v0, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 500
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float v1, v2

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, v1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 502
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    .line 503
    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 504
    invoke-virtual {v1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setRightInsetMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 505
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$initKRFView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$setKRFViewSettings(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-object p2
.end method
