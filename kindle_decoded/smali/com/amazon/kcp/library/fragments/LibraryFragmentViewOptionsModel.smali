.class public interface abstract Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;
.super Ljava/lang/Object;
.source "LibraryFragmentViewOptionsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;
    }
.end annotation


# virtual methods
.method public abstract deregisterListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V
.end method

.method public abstract getGroupType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
.end method

.method public abstract getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
.end method

.method public abstract getSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/LibrarySortType;
.end method

.method public abstract getViewType(Lcom/amazon/kindle/krx/library/LibraryView;)Lcom/amazon/kindle/krx/library/LibraryViewType;
.end method

.method public abstract registerListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V
.end method

.method public abstract setGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method

.method public abstract setLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method

.method public abstract setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V
.end method

.method public abstract setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kindle/krx/library/LibraryView;)V
.end method
