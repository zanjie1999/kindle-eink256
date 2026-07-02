.class public abstract Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;
.super Ljava/lang/Object;
.source "BaseLibraryFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;


# instance fields
.field protected activity:Landroidx/fragment/app/FragmentActivity;

.field protected countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

.field private final emptyLibraryController:Lcom/amazon/kcp/library/EmptyLibraryController;

.field private isVisible:Z

.field protected libraryActionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    .line 83
    new-instance v0, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->libraryActionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$1;-><init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->libraryActionBarHelper:Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->initEmptyController(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryActionBarHelper;Ljava/lang/Runnable;)Lcom/amazon/kcp/library/EmptyLibraryController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->emptyLibraryController:Lcom/amazon/kcp/library/EmptyLibraryController;

    return-void
.end method

.method private getEmptyLibraryStringProvider()Lcom/amazon/kcp/library/EmptyLibraryStringProvider;
    .locals 2

    .line 331
    new-instance v0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$4;-><init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V

    .line 339
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getEmptyLibraryStringProviderFactory()Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/EmptyLibraryStringProviderFactory;->createEmptyLibraryStringProvider(Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

    return-object v0
.end method

.method private initEmptyController(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryActionBarHelper;Ljava/lang/Runnable;)Lcom/amazon/kcp/library/EmptyLibraryController;
    .locals 7

    .line 118
    const-class v0, Lcom/amazon/kcp/library/EmptyLibraryControllerProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/library/EmptyLibraryControllerProvider;

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getEmptyLibraryStringProvider()Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    .line 121
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/library/EmptyLibraryControllerProvider;->newController(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryActionBarHelper;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)Lcom/amazon/kcp/library/EmptyLibraryController;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 130
    new-instance p2, Lcom/amazon/kcp/library/EmptyLibraryController;

    .line 133
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getEmptyLibraryStringProvider()Lcom/amazon/kcp/library/EmptyLibraryStringProvider;

    move-result-object v0

    invoke-direct {p2, p1, p3, p0, v0}, Lcom/amazon/kcp/library/EmptyLibraryController;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/EmptyLibraryStringProvider;)V

    :cond_1
    return-object p2
.end method


# virtual methods
.method protected destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 263
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 264
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method public dismissActionMode()V
    .locals 0

    return-void
.end method

.method public getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1
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

    .line 321
    new-instance v0, Lcom/amazon/kcp/library/DefaultLibraryDisplayItemsProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DefaultLibraryDisplayItemsProvider;-><init>()V

    return-object v0
.end method

.method public getBookCloseAnimation()I
    .locals 1

    .line 254
    sget v0, Lcom/amazon/kindle/librarymodule/R$anim;->activity_fade_out:I

    return v0
.end method

.method protected getEmptyLibraryStringId()I
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_device_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_title:I

    :goto_0
    return v0
.end method

.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 286
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 274
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->None:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method

.method public getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortTypePersistKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 5

    .line 228
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 229
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    new-array v0, v3, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 235
    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->dismissActionMode()V

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->emptyLibraryController:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->hideEmptyLibraryLayout()V

    .line 154
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    return-void
.end method

.method protected isVisible()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    return v0
.end method

.method public onDestroy(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    return-void
.end method

.method public onLibraryRefreshEmptyLibraryStringEvent(Lcom/amazon/kindle/event/LibraryRefreshEmptyLibraryString;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->updateEmptyLibrary()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onReSelected()V
    .locals 0

    return-void
.end method

.method public onViewModeSelected(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;->registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V

    return-void
.end method

.method public scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 0

    return-void
.end method

.method public setCountDelegator(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->countDelegator:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance p1, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$2;-><init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V

    return-void
.end method

.method public setEmptyLibraryCount(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->emptyLibraryController:Lcom/amazon/kcp/library/EmptyLibraryController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/EmptyLibraryController;->updateEmptyLibraryLayout(I)V

    return-void
.end method

.method public setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 0

    return-void
.end method

.method public setUserSelectedViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 0

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 141
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    if-nez p1, :cond_0

    .line 143
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->isVisible:Z

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    return-void
.end method

.method protected updateEmptyLibrary()V
    .locals 2

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    new-instance v1, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler$3;-><init>(Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
