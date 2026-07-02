.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;
.super Ljava/lang/Object;
.source "TabletFoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->initPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$302(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
