.class public interface abstract Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
.super Ljava/lang/Object;
.source "ILibraryFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/IFragmentHandler;


# virtual methods
.method public abstract dismissActionMode()V
.end method

.method public abstract getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookCloseAnimation()I
.end method

.method public abstract getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
.end method

.method public abstract getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
.end method

.method public abstract getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;
.end method

.method public abstract getQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;
.end method

.method public abstract getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
.end method

.method public abstract getSortType()Lcom/amazon/kcp/library/LibrarySortType;
.end method

.method public abstract getSortTypePersistKey()Ljava/lang/String;
.end method

.method public abstract getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
.end method

.method public abstract getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;
.end method

.method public abstract getTab()Lcom/amazon/kindle/krx/library/LibraryView;
.end method

.method public abstract getTitleString()Ljava/lang/String;
.end method

.method public abstract getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
.end method

.method public abstract onDestroy(Landroidx/fragment/app/FragmentManager;)V
.end method

.method public abstract onReSelected()V
.end method

.method public abstract onViewModeSelected(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
.end method

.method public abstract setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V
.end method

.method public abstract setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
.end method

.method public abstract show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V
.end method
