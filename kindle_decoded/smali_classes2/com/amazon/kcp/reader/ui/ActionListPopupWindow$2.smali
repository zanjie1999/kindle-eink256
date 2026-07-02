.class Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;
.super Ljava/lang/Object;
.source "ActionListPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 77
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;->val$anchorView:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;->val$anchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
