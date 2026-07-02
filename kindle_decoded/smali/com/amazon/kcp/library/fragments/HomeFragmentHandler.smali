.class public Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;
.source "HomeFragmentHandler.java"


# instance fields
.field protected final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method

.method private getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RubyHomeFragmentHandler_HOME"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    return-object v0
.end method


# virtual methods
.method protected getEmptyLibraryStringId()I
    .locals 1

    .line 100
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_carousel_title:I

    return v0
.end method

.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 110
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method public getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->landing:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 54
    :cond_0
    const-class p1, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected newRubyHomeFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;-><init>()V

    return-object v0
.end method

.method public onDestroy(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 95
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onReSelected()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->scrollToTop()V

    goto :goto_0

    .line 64
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->refresh()V

    goto :goto_0

    .line 85
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->newRubyHomeFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    const-string v1, "RubyHomeFragmentHandler_HOME"

    .line 40
    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/HomeFragmentHandler;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 45
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->setFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    return-void
.end method
