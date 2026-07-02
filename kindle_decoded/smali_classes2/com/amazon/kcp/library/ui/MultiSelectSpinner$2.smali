.class Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;
.super Ljava/lang/Object;
.source "MultiSelectSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;Landroid/widget/PopupMenu;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    iput-object p2, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-static {p1}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->access$200(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-static {v2}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->access$200(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-static {v3}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->access$300(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez p1, :cond_2

    if-eqz v2, :cond_3

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    :cond_3
    return-void
.end method
