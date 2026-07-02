.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;
.super Landroid/widget/ArrayAdapter;
.source "TabletFoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->newAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;
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
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 261
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 262
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->isImageOnlyPresentationPreferred()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    .line 263
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newImageOnlyDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    .line 264
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newImageAndTextDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 266
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-object p2
.end method
