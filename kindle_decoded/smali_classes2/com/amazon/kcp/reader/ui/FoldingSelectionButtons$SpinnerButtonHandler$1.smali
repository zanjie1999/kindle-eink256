.class Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;
.super Ljava/lang/Object;
.source "FoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

.field final synthetic val$category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

.field final synthetic val$this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;->this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;->val$this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;->val$category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;->this$1:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->access$300(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->filterVisible(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;->val$category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    invoke-virtual {v1, p1, v0, v2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->showPopup(Landroid/view/View;Ljava/util/List;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V

    return-void
.end method
