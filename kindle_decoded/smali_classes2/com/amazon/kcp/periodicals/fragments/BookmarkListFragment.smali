.class public Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;
.super Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;
.source "BookmarkListFragment.java"


# instance fields
.field private final addCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private bookmarkListContainer:Landroid/view/View;

.field private final deleteCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

.field private mBookmarkListClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field protected mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

.field private mNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkListClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 38
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->addCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 53
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;-><init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->deleteCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->addBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->deleteBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    return-void
.end method

.method private addBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkData()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-instance p1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;-><init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 158
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private deleteBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 3

    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->release()V

    .line 175
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getBookmarkListContainer()Landroid/view/View;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    return-object v0
.end method

.method public initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;I)V
    .locals 3

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    .line 92
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;

    .line 93
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getAddedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->addCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {p2, v0}, Lcom/amazon/foundation/internal/ObjectEventProvider;->register(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 94
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getDeletedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->deleteCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {p2, v0}, Lcom/amazon/foundation/internal/ObjectEventProvider;->register(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getBookmarkData()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    .line 101
    new-instance v1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;-><init>(Lcom/amazon/android/docviewer/bookmarks/IBookmark;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->initializeListAdapter(Ljava/util/ArrayList;I)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    iget-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/SortedListFragment;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected initializeListAdapter(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;I)V"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$drawable;->list_item_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->bookmark_list_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    sget p3, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_bookmark_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getAddedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->addCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/ObjectEventProvider;->unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getDeletedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->deleteCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/ObjectEventProvider;->unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    if-eqz p1, :cond_1

    .line 126
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mNavigator:Lcom/amazon/nwstd/docviewer/INewsstandNavigator;

    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getBookmarkData()Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/nwstd/docviewer/INewsstandNavigator;->navigateToBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkListClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 129
    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "NewsstandBookmarkList"

    const-string p3, "JumpToBookmarkItem"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setBookmarkListClosedEvent(Lcom/amazon/foundation/internal/IntEventProvider;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->mBookmarkListClosedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-void
.end method

.method protected updateLayout()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 191
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->shadow_bookmark_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 196
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 199
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->shadow_bookmark_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->bookmark_view_landscape_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->bookmark_list_view_left_shadow_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 205
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->bookmarkListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method
