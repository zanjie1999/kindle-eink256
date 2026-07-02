.class public Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerScrollSettleListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isTouchInitiated:Z

.field private lastScrollState:I

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->isTouchInitiated:Z

    .line 39
    iput v0, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->lastScrollState:I

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private getNlnMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailHolderFromIndex(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 149
    instance-of p2, p1, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 150
    check-cast p1, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private reportNavigationEvent(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V
    .locals 8

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 108
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v1

    .line 109
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 110
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->getThumbnailHolderFromIndex(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v7, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;

    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v7

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;-><init>(Lcom/amazon/android/docviewer/IPositionRange;JLcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V

    invoke-interface {v0, v7}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 119
    sget-object p2, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->START:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    const/4 v0, 0x0

    if-ne p3, p2, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->setStartPositionRange(Lcom/amazon/android/docviewer/IPositionRange;Z)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object p2, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->END:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    if-ne p3, p2, :cond_3

    .line 123
    iget-object p2, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 125
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 128
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->setEndPositionRange(Lcom/amazon/android/docviewer/IPositionRange;)V

    .line 129
    iget-object p1, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    sget-object p2, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->TAG:Ljava/lang/String;

    const-string p3, "unable to find position ranges after scrolling to report range settled"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 45
    iget v0, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->lastScrollState:I

    .line 46
    iput p2, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->lastScrollState:I

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->getNlnMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object p2, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->START:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->reportNavigationEvent(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V

    return-void

    .line 51
    :cond_1
    iput-boolean v3, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->isTouchInitiated:Z

    .line 52
    sget-object p2, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->START:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->reportNavigationEvent(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v2

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    return-void

    .line 64
    :cond_3
    iget p2, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->lastScrollState:I

    if-eq p2, v0, :cond_8

    if-nez v1, :cond_4

    .line 66
    sget-object p1, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->TAG:Ljava/lang/String;

    const-string p2, "nln mode is off, cannot proceed."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_4
    sget-object p2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, p2, :cond_5

    .line 71
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 72
    :cond_5
    sget-object p2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v1, p2, :cond_7

    .line 75
    iget-object p2, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->refreshToggleBookmarkItem()V

    .line 80
    :cond_6
    sget-object p2, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->END:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->reportNavigationEvent(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;)V

    .line 83
    :cond_7
    :goto_0
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;->isTouchInitiated:Z

    :cond_8
    return-void
.end method
