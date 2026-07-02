.class public interface abstract Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;
.super Ljava/lang/Object;
.source "LibraryFragmentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryFragment"
.end annotation


# virtual methods
.method public abstract dismissActionMode()V
.end method

.method public abstract getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
.end method

.method public abstract refresh()V
.end method

.method public abstract setFilterAndSort(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
.end method

.method public abstract setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
.end method
