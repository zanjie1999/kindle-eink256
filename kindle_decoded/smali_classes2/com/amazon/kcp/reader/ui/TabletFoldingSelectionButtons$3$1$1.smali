.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;
.super Ljava/lang/Object;
.source "TabletFoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;->this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;->this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;->this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;->this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;->this$2:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
