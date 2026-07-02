.class public Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;
.super Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;
.source "ReplicaViewAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private centeredWhenOnePage:Z

.field private delayForImages:I

.field private final imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private final interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

.field mCurrentPosition:I

.field private mInitialDisplayImageQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field private mInstantiatedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/nwstd/replica/IReplicaPage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

.field private final mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

.field private final mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

.field private m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

.field private m_dataChangedAfterShouldCenterWhenOnePage:Z

.field private m_deviceScreenHeight:I

.field private m_deviceScreenWidth:I

.field private m_newPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

.field private m_orientation:I

.field private final overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

.field private final toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;IZIIILcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/nwstd/upsell/UpsellController;Lcom/amazon/nwstd/metrics/IMetricsHelper;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mCurrentPosition:I

    .line 77
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    .line 78
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->delayForImages:I

    .line 80
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_dataChangedAfterShouldCenterWhenOnePage:Z

    .line 107
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 108
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    .line 109
    iput p5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    .line 110
    iput-boolean p6, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    .line 111
    iput p7, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->delayForImages:I

    .line 112
    iput-object p3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 113
    iput p8, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenWidth:I

    .line 114
    iput p9, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenHeight:I

    .line 115
    iput-object p4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    .line 116
    sget-object p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInitialDisplayImageQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 117
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    .line 118
    iput-object p11, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    .line 119
    iput-object p10, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    .line 120
    iput-object p12, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    return-void
.end method

.method private getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    if-eqz v0, :cond_0

    .line 651
    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mCurrentPosition:I

    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    return-object v0

    .line 653
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    return-object v0
.end method

.method private initializeBookmarks(Lcom/amazon/nwstd/replica/IReplicaPage;)V
    .locals 8

    .line 246
    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    if-eqz v1, :cond_4

    .line 248
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->getBookmarkableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getNumberOfReplicaPages()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 251
    new-instance v2, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V

    .line 252
    invoke-interface {v0, v2}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addRightBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V

    .line 254
    new-instance v2, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V

    .line 255
    invoke-interface {v0, v2}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addRightBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V

    goto/16 :goto_1

    .line 258
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v2, v1, v4}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 261
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v4, v1, v5}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v2, v1, v5}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    .line 266
    :goto_0
    new-instance v3, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    invoke-direct {v3, v5, v6, v2}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V

    .line 267
    invoke-interface {v0, v3}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addRightBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V

    .line 269
    new-instance v3, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v7, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-direct {v3, v5, v6, v7, v2}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V

    .line 270
    invoke-interface {v0, v3}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addRightBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 273
    new-instance v2, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V

    .line 274
    invoke-interface {v0, v2}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addLeftBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V

    .line 276
    new-instance v2, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V

    .line 277
    invoke-interface {v0, v2}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->addLeftBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V

    .line 280
    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->updateBookmarkHintVisibility()V

    :cond_4
    return-void
.end method

.method private reportReadingNewUpsellFullPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)V
    .locals 4

    .line 635
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getReadingPercentage(Lcom/amazon/android/docviewer/mapper/PageIndex;)D

    move-result-wide v0

    .line 636
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    invoke-interface {v2, p1, v0, v1, v3}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->startReadingUpsellFullPage(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_4

    .line 303
    instance-of v0, p3, Lcom/amazon/nwstd/replica/IReplicaPage;

    if-eqz v0, :cond_4

    .line 305
    move-object v0, p3

    check-cast v0, Lcom/amazon/nwstd/replica/IReplicaPage;

    .line 307
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 309
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Replica page instantiated view list must contain view being destroyed."

    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 314
    :cond_2
    instance-of p2, p3, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    if-eqz p2, :cond_3

    .line 315
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {p2}, Lcom/amazon/nwstd/upsell/UpsellController;->decreaseUpsellFullPageViewRetainCount()V

    .line 318
    :cond_3
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->destroy()V

    .line 319
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    if-ne v0, p2, :cond_5

    const/4 p2, 0x0

    .line 320
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    const/4 p2, -0x2

    .line 321
    iput p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mCurrentPosition:I

    goto :goto_1

    .line 326
    :cond_4
    sget-object p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "ReplicaViewPager destroys an invalid item."

    invoke-static {p2, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    :cond_5
    :goto_1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getContentPageIndexFromDisplayedPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    return-object p1
.end method

.method public getContentPageIndexFromViewPagerPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getViewPagerScreensCount(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    return-object v0
.end method

.method public getCurrentReplicaPageIndexes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isNormalPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    check-cast v1, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    .line 581
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    .line 582
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 584
    iget v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v3, v1, v2}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v2, v1, v3}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v2, v1, v3}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexOfNextPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 587
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getDisplayedPositionFromViewPagerPosition(I)I
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getDisplayedPositionFromViewPagerPosition(II)I

    move-result p1

    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 333
    instance-of v2, v1, Lcom/amazon/nwstd/replica/IReplicaPage;

    const/4 v3, -0x2

    if-eqz v2, :cond_13

    .line 335
    move-object v2, v1

    check-cast v2, Lcom/amazon/nwstd/replica/IReplicaPage;

    .line 336
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v4

    .line 337
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IReplicaPage;->getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;

    move-result-object v5

    .line 338
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IReplicaPage;->getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;

    move-result-object v2

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 343
    :cond_0
    check-cast v1, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    .line 344
    invoke-interface {v2}, Lcom/amazon/nwstd/replica/IMagnifiablePage;->getMagnifiableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v10

    .line 350
    iget-boolean v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_dataChangedAfterShouldCenterWhenOnePage:Z

    const/4 v12, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_f

    .line 352
    iget v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    if-ne v4, v7, :cond_e

    .line 354
    iget-object v8, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v8, v10, v4}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v4

    const-string v8, "ReplicaViewAdapter.getItemPosition m_dataChangedAfterShouldCenterWhenOnePage shouldn\'t be true at this point"

    const/4 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_7

    .line 358
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v4

    sget-object v13, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v4, v13, :cond_1

    return v3

    .line 361
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v4

    .line 363
    iget-boolean v13, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-nez v13, :cond_3

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v13

    if-ne v13, v6, :cond_3

    .line 366
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    new-array v8, v7, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v9, v8, v11

    .line 371
    aget-object v3, v3, v11

    aput-object v3, v8, v6

    move-object/from16 v18, v8

    goto :goto_0

    :cond_2
    move-object/from16 v18, v9

    .line 373
    :goto_0
    new-instance v11, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object v14, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 374
    invoke-virtual {v10}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v15

    .line 377
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v3

    mul-int/lit8 v16, v3, 0x2

    .line 378
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v17

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;III[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    .line 380
    new-instance v3, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;Lcom/amazon/nwstd/model/replica/ReplicaCanvas;)V

    goto :goto_2

    .line 381
    :cond_3
    iget-boolean v13, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-eqz v13, :cond_6

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v13

    if-ne v13, v7, :cond_6

    .line 383
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 386
    aget-object v8, v3, v11

    if-nez v8, :cond_4

    aget-object v3, v3, v6

    goto :goto_1

    :cond_4
    aget-object v3, v3, v11

    :goto_1
    move-object v9, v3

    :cond_5
    move-object/from16 v18, v9

    .line 388
    new-instance v11, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v14, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 389
    invoke-virtual {v10}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v15

    .line 392
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v3

    div-int/lit8 v16, v3, 0x2

    .line 393
    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v17

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    .line 395
    new-instance v3, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;Lcom/amazon/nwstd/model/replica/ReplicaCanvas;)V

    .line 400
    :goto_2
    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setModel(Lcom/amazon/nwstd/model/replica/ReplicaModel;)V

    .line 401
    invoke-interface {v5}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->resetBookmark()V

    .line 402
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->initializeBookmarks(Lcom/amazon/nwstd/replica/IReplicaPage;)V

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_6

    .line 397
    :cond_6
    invoke-static {v11, v8}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    return v3

    .line 406
    :cond_7
    iget-object v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v13, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v4, v10, v13}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 410
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v4

    sget-object v13, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v4, v13, :cond_8

    return v3

    .line 413
    :cond_8
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    .line 415
    iget-boolean v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v4

    if-ne v4, v6, :cond_a

    .line 418
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    new-array v8, v7, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 423
    aget-object v4, v4, v11

    aput-object v4, v8, v11

    aput-object v9, v8, v6

    move-object/from16 v18, v8

    goto :goto_3

    :cond_9
    move-object/from16 v18, v9

    .line 426
    :goto_3
    new-instance v11, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object v14, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 427
    invoke-virtual {v10}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v15

    .line 430
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v4

    mul-int/lit8 v16, v4, 0x2

    .line 431
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v17

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;III[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    .line 433
    new-instance v3, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;Lcom/amazon/nwstd/model/replica/ReplicaCanvas;)V

    goto :goto_5

    .line 434
    :cond_a
    iget-boolean v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v4

    if-ne v4, v7, :cond_d

    .line 436
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 440
    aget-object v8, v4, v11

    if-nez v8, :cond_b

    aget-object v4, v4, v6

    goto :goto_4

    :cond_b
    aget-object v4, v4, v11

    :goto_4
    move-object v9, v4

    :cond_c
    move-object/from16 v18, v9

    .line 442
    new-instance v11, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object v14, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 443
    invoke-virtual {v10}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v15

    .line 446
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v4

    div-int/lit8 v16, v4, 0x2

    .line 447
    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v17

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    .line 449
    new-instance v3, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;Lcom/amazon/nwstd/model/replica/ReplicaCanvas;)V

    .line 454
    :goto_5
    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setModel(Lcom/amazon/nwstd/model/replica/ReplicaModel;)V

    .line 455
    invoke-interface {v5}, Lcom/amazon/nwstd/replica/IBookmarkablePage;->resetBookmark()V

    .line 456
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->initializeBookmarks(Lcom/amazon/nwstd/replica/IReplicaPage;)V

    .line 457
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    .line 451
    :cond_d
    invoke-static {v11, v8}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    return v3

    :cond_e
    :goto_6
    return v12

    .line 468
    :cond_f
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getNumberOfReplicaPages()I

    move-result v2

    if-ne v2, v6, :cond_10

    iget v2, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    if-eq v2, v6, :cond_11

    .line 469
    :cond_10
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getNumberOfReplicaPages()I

    move-result v2

    if-ne v2, v7, :cond_14

    iget v2, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    if-ne v2, v7, :cond_14

    .line 470
    :cond_11
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->resetZoom()V

    return v12

    :cond_12
    :goto_7
    return v3

    .line 476
    :cond_13
    sget-object v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "ReplicaViewPager getItemPosition with an invalid item."

    invoke-static {v1, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_14
    return v3
.end method

.method public getPageCount()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount(I)I

    move-result v0

    return v0
.end method

.method public getPageCount(I)I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getDisplayedPageCount(I)I

    move-result p1

    return p1
.end method

.method public getReadingPercentage(Lcom/amazon/android/docviewer/mapper/PageIndex;)D
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    int-to-double v0, p1

    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;)I
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;IZ)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 196
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getContentPageIndexFromViewPagerPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v6

    .line 201
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eqz p3, :cond_0

    .line 203
    iget-object v2, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInitialDisplayImageQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    :cond_0
    move-object v9, v2

    .line 206
    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    iget v2, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 213
    iget-boolean v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-interface {v4, v6, v2}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v2, v6, v4}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    .line 217
    :goto_0
    new-instance v10, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v3, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v5, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    iget v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenHeight:I

    iget v8, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenWidth:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    goto :goto_1

    .line 220
    :cond_3
    new-instance v10, Lcom/amazon/nwstd/model/replica/ReplicaModel;

    iget-object v3, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v5, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    iget v7, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenWidth:I

    iget v8, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_deviceScreenHeight:I

    const/4 v4, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/amazon/nwstd/model/replica/ReplicaModel;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    :goto_1
    move-object v13, v10

    .line 223
    new-instance v2, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v14, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    iget-object v15, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget v3, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->delayForImages:I

    move-object v11, v2

    move/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/model/replica/ReplicaModel;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V

    .line 226
    iget-object v3, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    invoke-direct {v0, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->initializeBookmarks(Lcom/amazon/nwstd/replica/IReplicaPage;)V

    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getPageType()Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    move-result-object v1

    sget-object v3, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->UPSELL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    iget-object v1, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    if-eqz v1, :cond_5

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mUpsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    iget-object v5, v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getReferenceImageRatio()F

    move-result v5

    invoke-static {v3, v4, v1, v2, v5}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->createInstance(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;IIF)Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    move-result-object v2

    goto :goto_2

    .line 236
    :cond_5
    sget-object v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    const-string v3, "Upsell page type encountered in magazine although the upsell controller is disabled."

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    new-instance v2, Lcom/amazon/nwstd/replica/StaticPage;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazon/nwstd/replica/StaticPage;-><init>(Landroid/content/Context;)V

    :cond_6
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v3, p1

    .line 240
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDelayToLoadImages(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->delayForImages:I

    return-void
.end method

.method public setInitialDisplayImageQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInitialDisplayImageQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    return-void
.end method

.method public setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_newPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    return-void
.end method

.method protected setOrientation(I)V
    .locals 1

    .line 129
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    if-eq p1, v0, :cond_1

    .line 130
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 131
    sget-object p1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->LANDSCAPE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->PORTRAIT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    invoke-interface {v0, p1}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->onOrientationChange(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V

    :cond_1
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Primary item\'s object should not be null (see NWSTD-1768)."

    .line 152
    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 156
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    instance-of v0, p3, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    .line 158
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    instance-of v1, v1, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->stopReadingUpsellFullPage()V

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 162
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->reportReadingNewUpsellFullPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    .line 164
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->onHide()V

    .line 165
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V

    .line 168
    :cond_5
    check-cast p3, Lcom/amazon/nwstd/replica/IReplicaPage;

    iput-object p3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    .line 171
    iput p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mCurrentPosition:I

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 174
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_newPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    invoke-interface {p3, p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V

    .line 175
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_currentPageView:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->onShow()V

    :cond_6
    return-void
.end method

.method public shouldCenterWhenOnePage(Z)V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    if-eq p1, v0, :cond_0

    .line 487
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->centeredWhenOnePage:Z

    const/4 p1, 0x1

    .line 488
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_dataChangedAfterShouldCenterWhenOnePage:Z

    .line 489
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 490
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_dataChangedAfterShouldCenterWhenOnePage:Z

    :cond_0
    return-void
.end method

.method public updateAllPageItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 6

    .line 551
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 553
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/replica/IReplicaPage;

    .line 555
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, "instantiated view list must contain view"

    .line 556
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 558
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v4, v2, v5}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isNormalPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    move-object v4, v3

    check-cast v4, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    .line 560
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v4

    new-instance v5, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$2;

    invoke-direct {v5, p0, v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$2;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;Lcom/amazon/nwstd/replica/IReplicaPage;)V

    invoke-virtual {v4, p1, v1, v5}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateInvisibleItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 523
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mCurrentPosition:I

    if-eq v3, v4, :cond_2

    .line 524
    iget-object v3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mInstantiatedViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/replica/IReplicaPage;

    .line 526
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, "instantiated view list must contain view"

    .line 527
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 529
    iget-object v4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget v5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->m_orientation:I

    invoke-interface {v4, v2, v5}, Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;->getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isNormalPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    move-object v4, v3

    check-cast v4, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;

    .line 531
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v4

    new-instance v5, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$1;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;Lcom/amazon/nwstd/replica/IReplicaPage;)V

    invoke-virtual {v4, p1, v1, v5}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
