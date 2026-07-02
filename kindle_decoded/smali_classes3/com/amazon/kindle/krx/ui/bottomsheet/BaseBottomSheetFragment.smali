.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;
.super Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;
.source "BaseBottomSheetFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private backgroundView:Landroid/view/View;

.field public behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

.field private childFragment:Landroidx/fragment/app/Fragment;

.field private dragIconUpdateManager:Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

.field private sheetContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sheetContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public disableDimBackground()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public disableDimBackgroundWithAnimation()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->show_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 234
    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$animate$1;-><init>(Landroid/view/View;J)V

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 246
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 252
    :cond_0
    new-instance v4, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$1;

    invoke-direct {v4, v3}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "fm.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget v1, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    sget v2, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 177
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "null-fragment"

    :goto_0
    const-string v3, "BottomSheetFragment"

    .line 180
    invoke-virtual {v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method public enableDimBackground()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public enableDimBackgroundWithAnimation()V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->show_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 201
    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$animate$1;-><init>(Landroid/view/View;J)V

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 210
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    new-instance v4, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$1;

    invoke-direct {v4, v3}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$enableDimBackgroundWithAnimation$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "behavior"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBehaviourEventHandler()Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    return-object v0
.end method

.method public final getChildFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getDragIconUpdateManager()Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dragIconUpdateManager:Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dismiss()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const-string v0, "THEME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_0
    sget-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    if-ne p1, v0, :cond_2

    .line 91
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$style;->Bottom_Sheet_Dark:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 93
    :cond_2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$style;->Bottom_Sheet_Light:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 96
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->bottom_sheet_container:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(cont\u2026tainer, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    const-string p2, "sheetContainer"

    if-eqz p1, :cond_10

    .line 97
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    .line 99
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetDialog)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->setBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "DISMISS_WITH_SWIPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "SKIP_COLLAPSED_STATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 105
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    sget v2, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_animated_background_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->backgroundView:Landroid/view/View;

    const-string v1, "HAS_DIM_BG"

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->enableDimBackground()V

    :cond_3
    const-string v1, "PEEK_HEIGHT"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v2, :cond_a

    sget v3, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_drag_icon_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "FORCE_SHOW_DRAG_ICON"

    .line 112
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    .line 114
    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/DragOnlyIconManager;

    invoke-direct {v3, v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/DragOnlyIconManager;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dragIconUpdateManager:Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    if-eqz v2, :cond_5

    .line 119
    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    invoke-direct {v3, v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dragIconUpdateManager:Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    :cond_5
    :goto_2
    const-string v2, "DISMISS_ON_TAP_OUTSIDE"

    .line 123
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;-><init>(Landroid/os/Bundle;Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 142
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 143
    new-instance v3, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;

    invoke-direct {v3, v1, p0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;-><init>(ILcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V

    .line 142
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    const-string v1, "SHOULD_SET_MAX_WIDTH"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->bottom_sheet_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->setMaxWidthPx(I)V

    goto :goto_4

    .line 142
    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 111
    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 105
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 160
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetBehaviourDelegator;-><init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_e

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "childFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dialog:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 169
    :cond_e
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 97
    :cond_10
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public onDestroy()V
    .locals 2

    .line 260
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 264
    :cond_0
    iput-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public setBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method

.method public final setBehaviourEventHandler(Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->behaviourEventHandler:Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;

    return-void
.end method

.method public final setChildFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final setDragIconUpdateManager(Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->dragIconUpdateManager:Lcom/amazon/kindle/krx/ui/bottomsheet/DragIconUpdateManager;

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    .line 272
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->setMaxHeightPx(I)V

    .line 273
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_0
    const-string p1, "sheetContainer"

    .line 271
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
