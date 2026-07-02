.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;
.super Ljava/lang/Object;
.source "TabletFoldingSelectionButtons.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->showPopup(Landroid/view/View;Ljava/util/List;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

.field final synthetic val$customSelectionButtons:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Ljava/util/List;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->val$customSelectionButtons:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->val$customSelectionButtons:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->onClick(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$302(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
