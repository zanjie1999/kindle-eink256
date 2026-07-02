.class Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;
.super Landroid/widget/ArrayAdapter;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 674
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->isImageOnlyPresentationPreferred()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    .line 675
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newImageOnlyDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    .line 676
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newImageAndTextDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method
