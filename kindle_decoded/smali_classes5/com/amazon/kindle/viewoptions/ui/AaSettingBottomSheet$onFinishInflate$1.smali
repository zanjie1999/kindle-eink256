.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "AaSettingBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBrightnessBarContainer()Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStateChanged state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x3

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOrientationLockView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string p2, "KindlePerformanceConstants.AA_MENU_CLOSE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnClosedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->access$isSheetOpening$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnOpenCompleteCallback()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method
