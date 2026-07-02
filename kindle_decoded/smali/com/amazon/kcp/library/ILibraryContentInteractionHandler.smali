.class public interface abstract Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;
.super Ljava/lang/Object;
.source "ILibraryContentInteractionHandler.java"


# virtual methods
.method public abstract announceActionModeBarIfNeeded()V
.end method

.method public abstract clearBookOpenAnimation()V
.end method

.method public abstract destroyActionMenu(Landroid/view/ActionMode;)V
.end method

.method public abstract onActionItemSelected(Landroid/view/ActionMode;Lcom/amazon/kindle/krx/library/LibraryView;Landroid/view/MenuItem;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Landroid/view/MenuItem;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract postProcessActionMenu(Landroid/view/Menu;)V
.end method

.method public abstract prepareActionMenu(Landroid/view/Menu;Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryView;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract setActionMode(Landroid/view/ActionMode;)V
.end method
