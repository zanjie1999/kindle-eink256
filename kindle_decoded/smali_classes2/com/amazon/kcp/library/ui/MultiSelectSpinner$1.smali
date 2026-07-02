.class Lcom/amazon/kcp/library/ui/MultiSelectSpinner$1;
.super Ljava/lang/Object;
.source "MultiSelectSpinner.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$1;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$1;->this$0:Lcom/amazon/kcp/library/ui/MultiSelectSpinner;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->access$000(Lcom/amazon/kcp/library/ui/MultiSelectSpinner;)Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    .line 79
    invoke-static {}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid item ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;->deselectAll()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/MultiSelectSpinner$IMultiSelectSpinnerListener;->selectAll()V

    :cond_2
    :goto_0
    return v2
.end method
