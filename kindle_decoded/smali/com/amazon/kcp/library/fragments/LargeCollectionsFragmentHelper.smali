.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.source "LargeCollectionsFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/SortChangeOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;",
        "Lcom/amazon/kcp/library/fragments/SortChangeOwner;"
    }
.end annotation


# instance fields
.field private adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

.field private collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private isCollectionDownloadEnabled:Z

.field private final repository:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

.field private sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;I",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryAdapterFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 40
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 46
    new-instance p1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p2

    const-string p3, "CollectionsManagerHolder.getInstance()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;-><init>(Lcom/amazon/kindle/collections/ICollectionsManager;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->repository:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->isCollectionDownloadEnabled:Z

    return-void
.end method

.method public static final synthetic access$getCollectionFilter$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)Lcom/amazon/kindle/krx/collections/CollectionFilter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-object p0
.end method

.method public static final synthetic access$isCollectionDownloadEnabled$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->isCollectionDownloadEnabled:Z

    return p0
.end method

.method private final getCheckedCollections(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;->onItemsRetrieved(Ljava/util/List;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->repository:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->checkedItems()Ljava/util/List;

    move-result-object v1

    const-string v2, "libraryAdapterFragment.checkedItems()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v5, v1, v2, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItemsByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->getCheckedCollections(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$menu;->collections_action_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method protected destroyActionMenu(Landroid/view/ActionMode;)V
    .locals 1

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->destroyActionMenu(Landroid/view/ActionMode;)V

    return-void
.end method

.method protected getItemId(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "item.identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getItemId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 38
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->getItemId(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isUsingCollections()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected itemCheckedStateChanged(IZLcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic itemCheckedStateChanged(IZLjava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p3, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->itemCheckedStateChanged(IZLcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    return p1
.end method

.method protected newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ReddingApplication.getDefaultApplicationContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->support_collections_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/amazon/kcp/library/ThumbnailCollectionsContentListener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/ThumbnailCollectionsContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;

    move-result-object v0

    const-string/jumbo p1, "super.newCollectionsCont\u2026tener(callback, isPaused)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected newContentInteractionHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
    .locals 4

    const-string v0, "libraryFragmentClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-object v0
.end method

.method protected onCreateLoader()Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsCursorLoader;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "fragment.activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsCursorLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;IJLjava/lang/String;)V
    .locals 0

    .line 129
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->numHeaders()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p3, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V
    .locals 0

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)V

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 38
    check-cast p2, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    return-void
.end method

.method protected prepareActionMenu(Landroid/view/Menu;)V
    .locals 1

    const-string/jumbo v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;Landroid/view/Menu;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->getCheckedCollections(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    return-void
.end method

.method public final restoreCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method

.method public final retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->repository:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    new-instance v1, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
            "-",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->repository:Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;

    new-instance v1, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRepository;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public final setAdapterHelper(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    return-void
.end method

.method public final setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-super/range {p0 .. p7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    :goto_0
    invoke-interface {p1, p3}, Lcom/amazon/kcp/library/fragments/SortChangeListener;->onSortChanged(Lcom/amazon/kcp/library/LibrarySortType;)V

    :cond_1
    return-void
.end method

.method public setSortChangeListener(Lcom/amazon/kcp/library/fragments/SortChangeListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;

    return-void
.end method
