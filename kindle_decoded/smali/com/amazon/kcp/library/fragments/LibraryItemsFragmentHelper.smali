.class public Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.source "LibraryItemsFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFirstActionMenuUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->isFirstActionMenuUpdate:Z

    return-void
.end method

.method private listsDifferByItemState(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getItemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getItemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method protected actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getCheckedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onActionItemSelected(Landroid/view/ActionMode;Lcom/amazon/kindle/krx/library/LibraryView;Landroid/view/MenuItem;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$menu;->library_action_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->isFirstActionMenuUpdate:Z

    return-void
.end method

.method protected destroyActionMenu(Landroid/view/ActionMode;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->destroyActionMenu(Landroid/view/ActionMode;)V

    return-void
.end method

.method getCheckedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->checkedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getItemId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getItemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected itemCheckedStateChanged(IZLcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 101
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-static {p3, p2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isMultiSelectionEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->setItemChecked(Ljava/lang/Object;IZ)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic itemCheckedStateChanged(IZLjava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->itemCheckedStateChanged(IZLcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    return p1
.end method

.method protected onCreateLoader()Landroidx/loader/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget v6, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->maxItems:I

    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->originId:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->query:Lcom/amazon/kcp/library/ILibraryItemQuery;

    .line 51
    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createLoaderForSortAndFilter(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Lcom/amazon/kcp/library/LibraryServiceCursorLoader;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;)V
    .locals 7

    .line 58
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/amazon/kcp/reader/ReaderController;

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-object v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;)V

    return-void
.end method

.method protected prepareActionMenu(Landroid/view/Menu;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->viewType:Lcom/amazon/kindle/krx/library/LibraryView;

    iget-boolean v3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->isFirstActionMenuUpdate:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->prepareActionMenu(Landroid/view/Menu;Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->postProcessActionMenu(Landroid/view/Menu;)V

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->getCheckedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->isFirstActionMenuUpdate:Z

    :cond_0
    return-void
.end method

.method protected shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/event/EventType;",
            ")Z"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    .line 112
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;->listsDifferByItemState(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
