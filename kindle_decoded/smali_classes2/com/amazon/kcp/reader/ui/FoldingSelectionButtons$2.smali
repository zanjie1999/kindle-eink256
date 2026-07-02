.class Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;
.super Ljava/lang/Object;
.source "FoldingSelectionButtons.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->showPopup(Landroid/view/View;Ljava/util/List;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

.field final synthetic val$customSelectionButtons:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Ljava/util/List;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;->val$customSelectionButtons:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 651
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;->val$customSelectionButtons:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object p3, p3, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p2, p3}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 652
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    const/4 p3, 0x0

    iput-object p3, p2, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    const/16 p2, 0x800

    .line 653
    invoke-static {p1, p2, p3}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method
