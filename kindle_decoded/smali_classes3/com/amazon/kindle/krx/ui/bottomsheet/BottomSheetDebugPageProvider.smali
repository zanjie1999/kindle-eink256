.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "BottomSheetDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;)Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;->getPresenter()Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getPresenter()Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Bottom Sheet Template"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 13

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    sget v1, Lcom/amazon/kindle/krl/R$layout;->bottom_sheet_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_is_collapsed:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/CheckBox;

    .line 29
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dismiss_with_swipe:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    .line 30
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dismiss_on_tap_outside:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    .line 31
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_has_dim_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    .line 32
    sget v1, Lcom/amazon/kindle/krl/R$id;->force_show_drag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    .line 33
    sget v1, Lcom/amazon/kindle/krl/R$id;->show_as_modal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    .line 34
    sget v1, Lcom/amazon/kindle/krl/R$id;->show_full_height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    .line 36
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_show:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    .line 37
    new-instance v12, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;

    move-object v1, v12

    move-object v2, p0

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;-><init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/ViewGroup;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
