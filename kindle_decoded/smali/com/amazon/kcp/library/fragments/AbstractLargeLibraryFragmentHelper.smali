.class public abstract Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.source "AbstractLargeLibraryFragmentHelper.kt"

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
.field private isFirstActionMenuUpdate:Z

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

.field private sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZLcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;IZZ",
            "Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryAdapterFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iput-object p7, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZLcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kindle/content/ILibraryService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v1, "Utils.getFactory().libraryService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZLcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Lcom/amazon/kindle/content/ILibraryService;)V

    return-void
.end method

.method private final getCheckedItems(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
            "-",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;->onItemsRetrieved(Ljava/util/List;)V

    goto :goto_0

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->checkedItems()Ljava/util/List;

    move-result-object v2

    const-string v3, "libraryAdapterFragment.checkedItems()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemsByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Ljava/util/List;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;->onItemsRetrieved(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final modelGroupingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getCOMICS_NARRATIVES_GROUPING()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getKINDLE_SERIES_GROUPING()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 174
    new-instance v0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->getCheckedItems(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public applyFilter(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 2

    const-string v0, "displayItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    instance-of p2, p1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    if-eqz p2, :cond_1

    .line 228
    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    :cond_0
    const-string p2, "displayItem.applyFilter(\u2026ryService) ?: displayItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final backIssueParentAsin()Ljava/lang/String;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    check-cast v0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final collection()Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    check-cast v0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->getCollection()Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method protected createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$menu;->library_action_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->isFirstActionMenuUpdate:Z

    return-void
.end method

.method protected destroyActionMenu(Landroid/view/ActionMode;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->destroyActionMenu(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final getAdapterHelperSettings(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/utils/AdapterHelperSettings;
    .locals 12

    .line 259
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->backIssueParentAsin()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->collection()Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 262
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    sget-object p1, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {p1}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getBACK_ISSUES_GROUPING()Ljava/util/Set;

    move-result-object p1

    :goto_2
    move-object v9, p1

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 263
    sget-object p1, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {p1}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getCOLLECTION_ITEMS_GROUPING()Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    .line 264
    :cond_3
    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v4, "UserSettingsController.getInstance(activity)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesContentGrouped()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->modelGroupingSet()Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    .line 265
    :cond_4
    sget-object p1, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {p1}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getNON_SERIES_GROUPING()Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_5

    .line 267
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_7

    .line 268
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 270
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    .line 268
    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->periodicalItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    :goto_4
    move-object v10, p1

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    .line 273
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->collectionItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :goto_5
    if-eqz p2, :cond_9

    .line 275
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_6
    move-object v6, p1

    .line 276
    new-instance p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;

    .line 277
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "libraryFilter!!"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    const-string/jumbo p2, "sortType"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v8, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const-string p2, "groupType"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    const-string v0, "Utils.getFactory().authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p2

    const-string v0, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const-string p2, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v11, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    .line 276
    invoke-direct/range {v4 .. v11}, Lcom/amazon/kcp/utils/AdapterHelperSettings;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getItemId(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "item.identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getItemId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->getItemId(Lcom/amazon/kindle/observablemodel/ItemID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getNarrativeAdapterHelperSettings(Landroid/os/Bundle;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/utils/AdapterHelperSettings;
    .locals 9

    const/4 v0, 0x0

    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "ARG_GROUP_ID"

    .line 292
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 293
    :cond_1
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->narrativeItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    move-object v7, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 294
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_2
    move-object v3, p1

    .line 295
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 296
    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 297
    new-instance p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;

    .line 298
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "libraryFilter!!"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "sortType"

    .line 300
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "groupType"

    .line 301
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    const-string v0, "Utils.getFactory().authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p2

    const-string v0, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string p2, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 297
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/utils/AdapterHelperSettings;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final isFirstActionMenuUpdate()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->isFirstActionMenuUpdate:Z

    return v0
.end method

.method protected itemCheckedStateChanged(IZLcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic itemCheckedStateChanged(IZLjava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p3, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->itemCheckedStateChanged(IZLcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    return p1
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

    .line 77
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryCursorLoader;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "fragment.context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCursorLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$onItemClickWithReadingStream$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/View;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V

    return-void
.end method

.method protected onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;
.end method

.method protected prepareActionMenu(Landroid/view/Menu;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/Menu;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->getCheckedItems(Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    return-void
.end method

.method public final retrieveLibraryItem(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveLibraryItem(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
            "-",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->periodicalArguments()Lcom/amazon/kcp/integrator/PeriodicalArguments;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
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

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V

    if-eqz v0, :cond_2

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    :goto_1
    invoke-interface {p1, p3}, Lcom/amazon/kcp/library/fragments/SortChangeListener;->onSortChanged(Lcom/amazon/kcp/library/LibrarySortType;)V

    :cond_2
    return-void
.end method

.method protected final setFirstActionMenuUpdate(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->isFirstActionMenuUpdate:Z

    return-void
.end method

.method public setSortChangeListener(Lcom/amazon/kcp/library/fragments/SortChangeListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/SortChangeListener;

    return-void
.end method

.method protected shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Lcom/amazon/kindle/event/EventType;",
            ")Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
