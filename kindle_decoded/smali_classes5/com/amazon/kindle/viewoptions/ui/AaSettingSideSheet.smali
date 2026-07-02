.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;
.source "AaSettingSideSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$Companion;
    }
.end annotation


# static fields
.field public static final TABLET_LANDSCAPE_MODE_WIDTH_PERCENT:D

.field public static final TABLET_LANDSCAPE_MODE_WIDTH_PERCENT_DUO:D


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomSheetTopShadow:Landroid/view/View;

.field private isOnLeftScreen:Z

.field private sideSheetContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private sideSheetShadow:Landroid/view/View;

.field private wasRestartedForSettingChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    .line 17
    sput-wide v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->TABLET_LANDSCAPE_MODE_WIDTH_PERCENT:D

    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 19
    sput-wide v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->TABLET_LANDSCAPE_MODE_WIDTH_PERCENT_DUO:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    return-void
.end method

.method private final onHideActions()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOrientationLockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v0, 0x8

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnClosedAction()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .line 132
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    .line 133
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 134
    iget-boolean v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    :goto_0
    const/4 v2, 0x0

    .line 133
    invoke-direct {v1, v2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x1f4

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 138
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$hide$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$hide$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->onHideActions()V

    return-void
.end method

.method public final isOnLeftScreen()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onFinishInflate()V

    .line 35
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bottom_sheet_top_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.aa_men\u2026_bottom_sheet_top_shadow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->bottomSheetTopShadow:Landroid/view/View;

    .line 36
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_side_sheet_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.aa_menu_v2_side_sheet_shadow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetShadow:Landroid/view/View;

    .line 37
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_side_sheet_content:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.aa_menu_v2_side_sheet_content)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getBottomSheetHandle()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->bottomSheetTopShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->view_options_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->loadContentFragment()V

    return-void

    :cond_1
    const-string v0, "bottomSheetTopShadow"

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetShadow:Landroid/view/View;

    const-string/jumbo p2, "sideSheetShadow"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int v1, p4, p1

    .line 57
    iget-boolean v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 60
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetShadow:Landroid/view/View;

    if-eqz v1, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    move v1, p4

    move p4, p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v1

    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetShadow:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 67
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->sideSheetContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3, v1, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void

    :cond_2
    const-string/jumbo p1, "sideSheetContent"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onRestartFromSettingChange()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->wasRestartedForSettingChange:Z

    return-void
.end method

.method public final setIsOnLeftScreen(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    return-void
.end method

.method public show(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->onHideActions()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnOpenedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->dismissAaDialogs()V

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOrientationLockView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getSettingContentViewParent()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 103
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->wasRestartedForSettingChange:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 104
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 106
    iput-boolean p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->wasRestartedForSettingChange:Z

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->getOnOpenCompleteCallback()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float p1, p1, v1

    .line 110
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 111
    iget-boolean v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 110
    :goto_1
    invoke-direct {v1, p1, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x1f4

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 114
    invoke-virtual {v1, p2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 115
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$show$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet$show$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method
