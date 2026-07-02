.class Lcom/amazon/kcp/library/fragments/HeaderGridView$1;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/HeaderGridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

.field final synthetic val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    mul-int v0, v0, v1

    if-lt p2, v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    sub-int v3, p2, v0

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;->val$listener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
