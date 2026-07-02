.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 158
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {p2, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$202(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 159
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object p2, p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->setActionMode(Landroid/view/ActionMode;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->announceActionModeBarIfNeeded()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$100(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->action_mode_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->destroyActionMenu(Landroid/view/ActionMode;)V

    .line 150
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$202(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 151
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->setActionMode(Landroid/view/ActionMode;)V

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$000(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->setLibraryMenuOptionsBarEnabled(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0

    .line 171
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {p3, p2, p5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->shouldInvalidateActionMode(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->prepareActionMenu(Landroid/view/Menu;)V

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$000(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->setLibraryMenuOptionsBarEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
