.class public Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;
.source "CollectionItemsFragmentHandler.java"


# static fields
.field private static final COLLECTION_FILTER_KEY:Ljava/lang/String; = "CollectionItemsFragmentHandler_CollectionFilter"

.field private static final COLLECTION_KEY:Ljava/lang/String; = "CollectionItemsFragmentHandler_Collection"

.field private static final CUSTOM_SORT_DIALOG_TAG:Ljava/lang/String; = "CustomSortDialog"

.field private static final DOWNLOAD_COLLECTION_DIALOG:Ljava/lang/String; = "DownloadCollectionDialog"


# instance fields
.field private collection:Lcom/amazon/kindle/collections/dto/ICollection;

.field private collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Lcom/amazon/kindle/collections/dto/ICollection;Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 62
    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    .line 63
    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method

.method private createLibraryViewDisplayer()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;
    .locals 1

    .line 215
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V

    return-object v0
.end method

.method private createSortMenuIfNecessary()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/CollectionItemsViewSortMenu;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_view_sort:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/library/ui/popup/CollectionItemsViewSortMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    .line 226
    new-instance v1, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$2;-><init>(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortTypeMenuListener(Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    new-instance v1, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->createLibraryViewDisplayer()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;-><init>(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeMenuListener(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;)V

    :cond_0
    return-void
.end method

.method private generateAddToCollectionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/AddToCollectionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "CollectionId"

    .line 164
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CollectionFilter"

    .line 165
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private onDownloadCollectionClicked()V
    .locals 4

    .line 148
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "LibraryActivity"

    const-string v3, "CollectionMultiselectDownload"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {v0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DownloadCollectionDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onEditButtonClicked()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Lcom/amazon/kcp/library/CustomSortDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/CustomSortDialogFragment;-><init>()V

    .line 173
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/CustomSortDialogFragment;->setHandler(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "CustomSortDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->showEditActivity()V

    :goto_0
    return-void
.end method

.method private showEditActivity()V
    .locals 5

    .line 202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "EditCollectionActivity"

    const-string v4, "CollectionEditModeShown"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 204
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v1

    const-string v2, "ViewType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSortMenu()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {v0}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->fromLibraryViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeItemAsChecked(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortTypeItemAsChecked(Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setEnabledRefineViewType([Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBookCloseAnimation()I
    .locals 1

    .line 271
    sget v0, Lcom/amazon/kindle/librarymodule/R$anim;->slide_out_bottom:I

    return v0
.end method

.method public getCollection()Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    return-object v0
.end method

.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->isUncollected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/amazon/kcp/library/UncollectedItemsFilter;->newInstance()Lcom/amazon/kcp/library/UncollectedItemsFilter;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/CollectionItemsFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/CollectionItemsFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method public getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 211
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;

    move-result-object p1

    return-object p1
.end method

.method protected instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
    .locals 2

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 279
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    return-object p1
.end method

.method public onAddToCollectionClicked()V
    .locals 4

    .line 157
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "LibraryActivity"

    const-string v3, "CollectionMultiselectAdd"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->generateAddToCollectionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfirmCustomSort()V
    .locals 2

    .line 195
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 196
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->showEditActivity()V

    .line 197
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->createSortMenuIfNecessary()V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->viewAndSortTypePopup:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortTypeItemAsChecked(Lcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_view_sort:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->createSortMenuIfNecessary()V

    .line 132
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->showSortMenu()V

    return v2

    .line 134
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->edit_button:I

    if-ne v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onEditButtonClicked()V

    return v2

    .line 137
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->add_to_collection:I

    if-ne v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onAddToCollectionClicked()V

    return v2

    .line 140
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->download_collection:I

    if-ne v0, v1, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onDownloadCollectionClicked()V

    return v2

    .line 144
    :cond_3
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CollectionItemsFragmentHandler_Collection"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollection;

    if-eqz v0, :cond_2

    .line 108
    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    const-string v0, "CollectionItemsFragmentHandler_CollectionFilter"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 125
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void

    .line 109
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collection:Lcom/amazon/kindle/collections/dto/ICollection;

    const-string v1, "CollectionItemsFragmentHandler_Collection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionItemsFragmentHandler_CollectionFilter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 185
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "CustomSortDialog"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/CustomSortDialogFragment;

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/library/CustomSortDialogFragment;->setHandler(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V

    :cond_0
    return-void
.end method
