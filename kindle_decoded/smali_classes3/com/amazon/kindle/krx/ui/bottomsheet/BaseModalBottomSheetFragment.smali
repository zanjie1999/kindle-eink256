.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;
.super Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;
.source "BaseModalBottomSheetFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private childFragment:Landroidx/fragment/app/Fragment;

.field private sheetContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sheetContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->sheetContainer:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "fm.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget v1, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    sget v2, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 103
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
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

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "behavior"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChildFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->dismiss()V

    .line 56
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

    .line 57
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$style;->Bottom_Sheet_Dark:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 59
    :cond_2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$style;->Bottom_Sheet_Light:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 62
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->modal_bottom_sheet_container:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(cont\u2026tainer, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->sheetContainer:Landroid/view/View;

    const-string p2, "sheetContainer"

    if-eqz p1, :cond_7

    .line 63
    sget v0, Lcom/amazon/kindle/krl/R$id;->modal_bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;-><init>(Landroid/os/Bundle;Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v1, "SHOULD_SET_MAX_WIDTH"

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
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

    goto :goto_2

    .line 67
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 89
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "childFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget v1, Lcom/amazon/kindle/krl/R$id;->modal_bottom_sheet:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->sheetContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 63
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/AbstractBottomSheetFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->_$_clearFindViewByIdCache()V

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

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method

.method public final setChildFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->childFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
