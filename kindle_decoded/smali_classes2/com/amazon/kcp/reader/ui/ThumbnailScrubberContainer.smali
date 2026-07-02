.class public Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;
.super Landroid/widget/LinearLayout;
.source "ThumbnailScrubberContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

.field private volatile bookmarkPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chapterInfo:Landroid/widget/TextView;

.field private fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

.field private kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

.field private kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

.field private onModelChange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;

.field private orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

.field private pageLabelInfo:Landroid/widget/TextView;

.field private relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p2, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    .line 103
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 105
    new-instance p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$1;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->onModelChange:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$ModelChangeCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    return-object p0
.end method

.method private static findParentViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 301
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getChapterTocItemForPageIndex(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getPageIndexFromIntPosition(Lcom/amazon/android/docviewer/KindleDoc;I)I
    .locals 1

    .line 325
    instance-of v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p0

    return p0

    .line 328
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object p0

    .line 331
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 333
    invoke-interface {v0, p0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateFastScrubber()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustMargins(Landroid/content/Context;I)V
    .locals 3

    .line 274
    sget p1, Lcom/amazon/kindle/krl/R$id;->trial_bar_and_scrubber:I

    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->findParentViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 280
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 284
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 285
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public alignScrubberToCurrentReadingPage()V
    .locals 1

    .line 262
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer$2;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelHideOverlaysAfterDelay()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    :cond_1
    return-void
.end method

.method public getCurrentPageLabelAndIndex()Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    .line 189
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->getPageIndexFromIntPosition(Lcom/amazon/android/docviewer/KindleDoc;I)I

    move-result v1

    .line 190
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPageIndex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 195
    :goto_0
    new-instance v2, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;

    invoke-direct {v2, v1, v0}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public getDoc()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 120
    sget v0, Lcom/amazon/kindle/krl/R$id;->seekBar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 124
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->chapter_info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->chapterInfo:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_label_info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->pageLabelInfo:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/amazon/kindle/krl/R$id;->thumbnails:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    .line 127
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->linkSeekbar(Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;)V

    .line 128
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->setSuppressPageNumberUpdateOnScrollChange(Z)V

    :cond_0
    return v0
.end method

.method public onWaypointsModelEvent(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->getPublisher()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->updateFastScrubber()V

    :cond_0
    return-void
.end method

.method public releaseScrubber()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->releaseScrubber()V

    .line 114
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public resetScrubber(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 4

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    .line 212
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eq p2, v1, :cond_0

    .line 213
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->relatedReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 214
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p2, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz p2, :cond_2

    .line 220
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->fastScrubber:Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-static {v1, p2, p1, v0}, Lcom/amazon/kindle/seekbar/SeekBarUtils;->initLayers(Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 222
    :cond_2
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDocViewer:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->getCurrentPageLabelAndIndex()Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->getIndex()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->updateChapterTooltipText(Ljava/lang/String;I)V

    .line 228
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->pageLabelInfo:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/krl/R$string;->thumbnail_scrubber_page:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->getLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 233
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->adjustMargins(Landroid/content/Context;I)V

    .line 234
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->resetScrubber(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->alignScrubberToCurrentReadingPage()V

    return-void
.end method

.method resetTOC()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    :cond_0
    return-void
.end method

.method public shutdownScrubber()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->thumbnailScrubber:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->shutdownScrubber()V

    return-void
.end method

.method public updateChapterTooltipText(Ljava/lang/String;I)V
    .locals 7

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->pageLabelInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->pageLabelInfo:Landroid/widget/TextView;

    sget v5, Lcom/amazon/kindle/krl/R$string;->thumbnail_scrubber_page:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->kindleDoc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz p1, :cond_3

    .line 160
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->hasTOC()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v1, :cond_1

    .line 163
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->bookTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    .line 166
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->getChapterTocItemForPageIndex(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 168
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->chapterInfo:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/krl/R$string;->thumbnail_scrubber_chapter_info:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 171
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 169
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberContainer;->chapterInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
