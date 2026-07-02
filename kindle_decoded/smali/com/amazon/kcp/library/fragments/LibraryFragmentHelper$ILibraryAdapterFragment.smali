.class public interface abstract Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryAdapterFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract checkedItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract clearCheckedItems()V
.end method

.method public abstract firstVisiblePosition()I
.end method

.method public abstract getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract hasAdapter()Z
.end method

.method public abstract hasView()Z
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract onRefresh()V
.end method

.method public abstract scrollToTop()V
.end method

.method public abstract setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V
.end method

.method public abstract setItemChecked(Ljava/lang/Object;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation
.end method

.method public abstract swapList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
