.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$2;
.super Ljava/lang/Object;
.source "TabletFoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$400(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method
