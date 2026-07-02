.class public Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;
.super Landroidx/fragment/app/Fragment;
.source "BookmarkFragment.java"

# interfaces
.implements Lcom/amazon/nwstd/bookmark/IBookmarkListController;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private landscapeCloseBookmarkListAnimation:Landroid/view/animation/Animation;

.field private landscapeOpenBookmarkListAnimation:Landroid/view/animation/Animation;

.field protected mBookmarkFragmentClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field protected mBookmarkFragmentOpenedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field protected mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

.field private mInsets:Landroid/graphics/Rect;

.field protected mIsVisible:Z

.field private final mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

.field private mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

.field private mStatusBarHeight:I

.field private portraitOpenBookmarkListAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    .line 47
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->portraitOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 48
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 49
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeCloseBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 52
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentOpenedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 53
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 64
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mIsVisible:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected getActionBarHeight()I
    .locals 1

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getBookmarkListClosedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method protected getBookmarkListItemLayout()I
    .locals 1

    .line 181
    sget v0, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_bookmark_list_item:I

    return v0
.end method

.method public getBookmarkListOpenedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentOpenedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hide(Z)Z
    .locals 5

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeCloseBookmarkListAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mIsVisible:Z

    .line 255
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p1, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 256
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->updateCustomButtons()V

    return v3

    :cond_3
    return v1
.end method

.method public initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Lcom/amazon/nwstd/docviewer/IContentInformationProvider;Lcom/amazon/foundation/IIntEventProvider;)V
    .locals 1

    .line 167
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->getBookmarkListItemLayout()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;I)V

    .line 168
    iput-object p4, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    if-eqz p4, :cond_0

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p4, p1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    :cond_0
    return-void
.end method

.method public isBookmarkListOpened()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mIsVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mStatusBarHeight:I

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$bool;->immersive_reading_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mStatusBarHeight:I

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;-><init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$anim;->open_bookmark_list_portrait:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->portraitOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$anim;->open_bookmark_list_landscape:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$anim;->close_bookmark_list_landscape:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeCloseBookmarkListAnimation:Landroid/view/animation/Animation;

    .line 129
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$3;-><init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 79
    new-instance p3, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-direct {p3}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;-><init>()V

    iput-object p3, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p3, v0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->setBookmarkListClosedEvent(Lcom/amazon/foundation/internal/IntEventProvider;)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_bookmark_container:I

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {p3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 87
    sget p3, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_bookmark_container:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->updateLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBookmarkableListVisible(Z)V
    .locals 0

    return-void
.end method

.method public show(Z)Z
    .locals 3

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->portraitOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 223
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->landscapeOpenBookmarkListAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iput-boolean v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mIsVisible:Z

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkFragmentOpenedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 228
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandBookmarkList"

    const-string v2, "OpenBookmarkList"

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->updateLayout(Landroid/view/View;)V

    return v1

    :cond_2
    return v0
.end method

.method protected updateCustomButtons()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    :cond_0
    return-void
.end method

.method protected updateLayout(Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->updateLayout()V

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->getActionBarHeight()I

    move-result v0

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android"

    const-string v5, "dimen"

    const-string v6, "navigation_bar_height"

    if-ne v1, v2, :cond_1

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mStatusBarHeight:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/amazon/kindle/newsstand/core/R$dimen;->popup_bookmark_view_top_margin:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/amazon/kindle/newsstand/core/R$dimen;->popup_bookmark_view_bottom_margin:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->areSoftKeysVisible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 285
    :cond_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 286
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 288
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mStatusBarHeight:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/amazon/kindle/newsstand/core/R$dimen;->popup_bookmark_view_top_margin:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->popup_bookmark_view_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->areSoftKeysVisible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->getNavigationBarPosition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v7, "right"

    .line 300
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    const-string v7, "bottom"

    .line 302
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 308
    :cond_3
    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 309
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 311
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method
