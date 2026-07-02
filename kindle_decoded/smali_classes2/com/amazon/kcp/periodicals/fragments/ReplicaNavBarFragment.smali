.class public Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;
.super Landroidx/fragment/app/Fragment;
.source "ReplicaNavBarFragment.java"


# static fields
.field private static final GMT:Ljava/util/TimeZone;


# instance fields
.field private mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

.field private mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

.field private mPeriodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

.field private mPublishDate:Landroid/widget/TextView;

.field private mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

.field private mReplicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

.field private mStopScrollingCallback:Lcom/amazon/foundation/ICallback;

.field private mThumbnailBeingUsedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT:00"

    .line 67
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mThumbnailBeingUsedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 69
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mStopScrollingCallback:Lcom/amazon/foundation/ICallback;

    .line 81
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;-><init>(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/widget/ThumbnailSlider;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->moveToPage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mThumbnailBeingUsedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object p0
.end method

.method private createThumbnailItemAdapter(Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;)Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;
    .locals 7

    .line 203
    new-instance v4, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->thumbnail_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 206
    new-instance v6, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getReaderScreenOrientation(Landroid/content/Context;)I

    move-result p1

    .line 211
    invoke-virtual {v6, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setOrientation(I)V

    return-object v6
.end method

.method private moveToPage(I)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->isItemClickValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mPeriodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

    if-eqz v0, :cond_0

    .line 221
    new-instance v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v1, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->updateSelectedPage(I)V

    .line 223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandReplicaView"

    const-string v1, "JumpToPageWithThumbnailSlider"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getThumbnailBeingUsedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mThumbnailBeingUsedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public init(Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/android/docviewer/IPeriodicalNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;)V
    .locals 2

    .line 134
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    .line 135
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mPeriodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

    .line 136
    iput-object p3, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mBitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 139
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p2

    .line 141
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p3

    check-cast p3, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 142
    invoke-interface {p3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-interface {p3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->thumbnail_slider_item:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/widget/ThumbnailSlider;

    iput-object p3, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    .line 153
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->createThumbnailItemAdapter(Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;)Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    .line 157
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 158
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$3;-><init>(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$4;-><init>(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->replica_title_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 181
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->replica_publish_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mPublishDate:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 188
    new-instance p1, Ljava/util/Date;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 189
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->GMT:Ljava/util/TimeZone;

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 191
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-static {p3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p3

    .line 194
    sget-object v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->GMT:Ljava/util/TimeZone;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mPublishDate:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 101
    sget p3, Lcom/amazon/kindle/newsstand/core/R$layout;->thumbnail_slider_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->release()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 124
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->stopScroll()V

    :cond_0
    return-void
.end method

.method public showSelectedPage()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->showSelectedPage()V

    return-void
.end method

.method public updateSelectedPage(I)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mReplicaSliderView:Lcom/amazon/android/widget/ThumbnailSlider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->mAdapter:Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/widget/ThumbnailSlider;->setNewSelected(II)V

    :cond_0
    return-void
.end method
