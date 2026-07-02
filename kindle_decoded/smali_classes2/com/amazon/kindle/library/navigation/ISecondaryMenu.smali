.class public interface abstract Lcom/amazon/kindle/library/navigation/ISecondaryMenu;
.super Ljava/lang/Object;
.source "ISecondaryMenu.java"


# virtual methods
.method public abstract attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
.end method

.method public abstract clearMenuOptions(Landroid/view/ViewGroup;Landroid/view/Menu;)V
.end method

.method public abstract createSecondaryToolbarMenu(Landroid/view/ViewGroup;Landroid/view/Menu;)V
.end method

.method public abstract getAttachedFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract refreshLayout()V
.end method

.method public abstract setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
.end method

.method public abstract setSecondaryToolbarMenuEnabled(Z)V
.end method

.method public abstract shouldRecreate(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;Landroid/view/View;)Z
.end method
