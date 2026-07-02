.class final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "BottomSheetDebugPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dismissOnTapOutside:Landroid/widget/CheckBox;

.field final synthetic $dismissWithSwipe:Landroid/widget/CheckBox;

.field final synthetic $forceShowDrag:Landroid/widget/CheckBox;

.field final synthetic $hasDimBackground:Landroid/widget/CheckBox;

.field final synthetic $isCollapsedView:Landroid/widget/CheckBox;

.field final synthetic $showAsModal:Landroid/widget/CheckBox;

.field final synthetic $showFullHeight:Landroid/widget/CheckBox;

.field final synthetic $viewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$isCollapsedView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$showAsModal:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$showFullHeight:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$hasDimBackground:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$dismissWithSwipe:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$dismissOnTapOutside:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$forceShowDrag:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 38
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$isCollapsedView:Landroid/widget/CheckBox;

    const-string v0, "isCollapsedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    const/16 v3, 0x12c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$showAsModal:Landroid/widget/CheckBox;

    const-string v0, "showAsModal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    new-instance v6, Lcom/amazon/kindle/krx/ui/bottomsheet/MyFragment;

    invoke-direct {v6}, Lcom/amazon/kindle/krx/ui/bottomsheet/MyFragment;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$showFullHeight:Landroid/widget/CheckBox;

    const-string v1, "showFullHeight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x6c

    const/4 v13, 0x0

    const-string v5, "BOTTOM_SHEET_SAMPLE"

    move-object v4, p1

    .line 41
    invoke-direct/range {v4 .. v13}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    new-instance v2, Lcom/amazon/kindle/krx/ui/bottomsheet/MyFragment;

    invoke-direct {v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/MyFragment;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$hasDimBackground:Landroid/widget/CheckBox;

    const-string v1, "hasDimBackground"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$dismissWithSwipe:Landroid/widget/CheckBox;

    const-string v1, "dismissWithSwipe"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$dismissOnTapOutside:Landroid/widget/CheckBox;

    const-string v1, "dismissOnTapOutside"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$forceShowDrag:Landroid/widget/CheckBox;

    const-string v1, "forceShowDrag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x2c0

    const/4 v12, 0x0

    const-string v1, "BOTTOM_SHEET_SAMPLE"

    move-object v0, p1

    .line 44
    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;->access$getPresenter(Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider;)Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1;->$viewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_sheet_dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    new-instance v1, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1$1;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetDebugPageProvider$getView$1$1;-><init>(Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
