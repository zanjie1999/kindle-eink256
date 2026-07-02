.class Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;
.super Ljava/lang/Object;
.source "ActionListPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

.field final synthetic val$anchorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->val$anchorView:Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->access$000(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->access$100(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->access$201(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;->this$0:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
