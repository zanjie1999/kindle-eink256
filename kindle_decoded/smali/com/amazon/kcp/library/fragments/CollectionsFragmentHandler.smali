.class public Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;
.source "CollectionsFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;
    }
.end annotation


# static fields
.field private static final CREATE_COLLECTION_TAG:Ljava/lang/String; = "CollectionsFragmentHandler_CREATE_COLLECTION"

.field private static final GRID_TAG:Ljava/lang/String; = "CollectionsFragmentHandler_GRID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private showInformativeToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/krx/collections/CollectionFilter;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/krx/collections/CollectionFilter;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 86
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 87
    iput-boolean p4, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->showInformativeToast:Z

    .line 88
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    if-eqz p3, :cond_0

    .line 90
    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    goto :goto_0

    .line 92
    :cond_0
    new-instance p2, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;Landroidx/fragment/app/FragmentActivity;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    :goto_0
    return-void
.end method

.method private getGridFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CollectionsFragmentHandler_GRID"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getLibraryFragment()Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    return-object v0
.end method


# virtual methods
.method public dismissActionMode()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getLibraryFragment()Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->dismissActionMode()V

    :cond_0
    return-void
.end method

.method protected getEmptyLibraryStringId()I
    .locals 1

    .line 324
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ruby_empty_collection_title:I

    return v0
.end method

.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 217
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method public getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 291
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method

.method public getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 246
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 6

    .line 268
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 269
    sget-object v5, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v5, v0, v3

    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v4

    return-object v0

    :cond_0
    new-array v0, v4, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 276
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v3

    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 252
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 2

    .line 223
    sget-object v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0

    .line 227
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0

    .line 225
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->collections:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 169
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->reportCollectionNavigationMetrics(Z)V

    return-void
.end method

.method public onCollectionItemsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V

    .line 318
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->refresh()V

    :cond_0
    return-void
.end method

.method public onCollectionsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReSelected()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getLibraryFragment()Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->scrollToTop()V

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->library_top_tool_bar_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getLibraryFragment()Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    return-void
.end method

.method protected reportCollectionNavigationMetrics(Z)V
    .locals 4

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/MetricsUtils;->getScreenOrientationForMetrics()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Orientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 184
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    .line 185
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 184
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I

    move-result v1

    .line 186
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NumCollections"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "Collections"

    if-eqz p1, :cond_1

    .line 192
    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 0

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 3

    .line 120
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    const-string v2, "ARG_RECYCLER_LAYOUT_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-class v1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;->collectionsFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Null LargeLibraryFragmentProvider while LL is enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    const-string v1, "CollectionsFragmentHandler_GRID"

    .line 135
    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 140
    :goto_1
    move-object p1, v0

    check-cast p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;

    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->showInformativeToast:Z

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;->showInformativeToast(Z)V

    .line 141
    move-object p2, v0

    check-cast p2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;->setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V

    goto :goto_2

    .line 149
    :cond_3
    new-instance p1, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;-><init>(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V

    .line 151
    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryItemCountProviderDelegator;->bindLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V

    .line 153
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "CollectionsFragmentHandler_CREATE_COLLECTION"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;

    if-eqz p1, :cond_4

    .line 155
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->reportCollectionNavigationMetrics(Z)V

    return-void
.end method

.method public showCreateCollectionDialog()V
    .locals 3

    .line 239
    new-instance v0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CollectionsFragmentHandler_CREATE_COLLECTION"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-void
.end method
