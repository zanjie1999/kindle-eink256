.class Lcom/amazon/kcp/widget/CheckableRadioGroup$1;
.super Ljava/lang/Object;
.source "CheckableRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/widget/CheckableRadioGroup;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/widget/CheckableRadioGroup;

.field final synthetic val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/widget/CheckableRadioGroup;Lcom/amazon/kcp/widget/LibraryCheckableItem;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->this$0:Lcom/amazon/kcp/widget/CheckableRadioGroup;

    iput-object p2, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->this$0:Lcom/amazon/kcp/widget/CheckableRadioGroup;

    invoke-static {p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->access$000(Lcom/amazon/kcp/widget/CheckableRadioGroup;)Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->this$0:Lcom/amazon/kcp/widget/CheckableRadioGroup;

    invoke-static {p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->access$000(Lcom/amazon/kcp/widget/CheckableRadioGroup;)Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;->onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->this$0:Lcom/amazon/kcp/widget/CheckableRadioGroup;

    iget-object v0, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup$1;->val$radioOption:Lcom/amazon/kcp/widget/LibraryCheckableItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemChecked(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
