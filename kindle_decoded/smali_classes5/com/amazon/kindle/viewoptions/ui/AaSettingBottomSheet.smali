.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;
.source "AaSettingBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$Companion;
    }
.end annotation


# static fields
.field private static final PEEK_PERCENT:D = 0.4

.field private static final PEEK_PERCENT_DUO:D = 0.6


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation
.end field

.field private bottomSheetCurrPeekPercent:D

.field private final bottomSheetHandleOnClickListener:Landroid/view/View$OnClickListener;

.field private final brightnessBarAnimationDuration:J

.field private isSheetOpening:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;-><init>(Landroid/content/Context;)V

    .line 23
    const-class p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(AaSettingBottomSheet::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0xc8

    .line 24
    iput-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->brightnessBarAnimationDuration:J

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->isSheetOpening:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide v0, 0x3fd999999999999aL    # 0.4

    .line 37
    iput-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetCurrPeekPercent:D

    .line 40
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetHandleOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-class p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(AaSettingBottomSheet::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0xc8

    .line 24
    iput-wide p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->brightnessBarAnimationDuration:J

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->isSheetOpening:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide p1, 0x3fd999999999999aL    # 0.4

    .line 37
    iput-wide p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetCurrPeekPercent:D

    .line 40
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$bottomSheetHandleOnClickListener$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetHandleOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bottomSheetBehavior"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isSheetOpening$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->isSheetOpening:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private final updateBrightnessBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBrightnessBarContainer()Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 186
    iget-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->brightnessBarAnimationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->destroy()V

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->saveBottomSheetBehavior()V

    return-void
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->updateBrightnessBar(Z)V

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    :cond_0
    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onFinishInflate()V

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBottomSheetHandle()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetHandleOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBrightnessBarContainer()Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getSettingContentView()Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from\u2026(this.settingContentView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    const-string v2, "bottomSheetBehavior"

    if-eqz v0, :cond_3

    const/4 v3, 0x5

    .line 59
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet$onFinishInflate$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 86
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->loadContentFragment()V

    return-void

    .line 60
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 116
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getSettingContentView()Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 118
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 120
    invoke-static {p1}, Lcom/amazon/kindle/displaymask/RectUtils;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 123
    iput-wide v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetCurrPeekPercent:D

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v0, "bottomSheetBehavior"

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetCurrPeekPercent:D

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_brightness_seekbar_container_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 127
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getPeekHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldPeekHeight(I)V

    .line 128
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldExpandedHeight(I)V

    return-void

    .line 127
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onRestartFromSettingChange()V
    .locals 5

    .line 101
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getBottomSheetOldState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "bottomSheetBehavior"

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_1

    sget-object v4, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getBottomSheetOldPeekHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getSettingContentView()Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getBottomSheetOldExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBrightnessBarContainer()Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_4
    return-void

    .line 108
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final saveBottomSheetBehavior()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    const-string v2, "bottomSheetBehavior"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 93
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldState(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_3
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldState(I)V

    :goto_0
    return-void

    .line 92
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public show(ZZ)V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->isSheetOpening:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnOpenedAction()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->dismissAaDialogs()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOrientationLockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getSettingContentViewParent()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 149
    :cond_3
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getBottomSheetOldState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "bottomSheetBehavior"

    if-eq v0, v1, :cond_5

    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    .line 150
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_4

    sget-object p2, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getBottomSheetOldState()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 151
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setBottomSheetOldState(I)V

    goto :goto_2

    .line 150
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-nez p1, :cond_8

    .line 153
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 158
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_7

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_9

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :goto_2
    return-void

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
