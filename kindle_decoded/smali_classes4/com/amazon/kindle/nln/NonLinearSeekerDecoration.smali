.class public Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;
.super Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;
.source "NonLinearSeekerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;
    }
.end annotation


# instance fields
.field private asyncTask:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;

.field private cachedBookId:Ljava/lang/String;

.field private cachedLocationString:Ljava/lang/String;

.field private cachedPosition:I

.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const/4 p2, 0x0

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedPosition:I

    .line 41
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->executor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Landroid/widget/SeekBar;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->navigateToSeekbarProgress(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-static {p1, p3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, ""

    return-object p1

    .line 162
    :cond_0
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;
    .locals 4

    .line 121
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 124
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 130
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedBookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedBookId:Ljava/lang/String;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 139
    :goto_0
    iget v3, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedPosition:I

    if-ne p3, v3, :cond_3

    if-eqz v0, :cond_6

    .line 140
    :cond_3
    iput p3, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedPosition:I

    .line 141
    iget-object v3, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->asyncTask:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;

    if-eqz v3, :cond_4

    .line 142
    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_5
    new-instance p2, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;-><init>(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->asyncTask:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;

    .line 149
    iget-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->executor:Ljava/util/concurrent/Executor;

    new-array v0, v2, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->cachedLocationString:Ljava/lang/String;

    return-object p1
.end method

.method protected getNLNText(Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const-string v2, " "

    if-ne p3, v1, :cond_1

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getChapterInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 109
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_BOTTOM:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-ne p3, v0, :cond_3

    .line 110
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->getDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p1

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method protected getStringFormat(ZZ)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    .line 188
    sget p1, Lcom/amazon/kindle/krl/R$string;->current_location_nln:I

    return p1

    .line 197
    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$string;->kre_synccx_most_recent_current_page_footer_nln:I

    return p1

    .line 194
    :cond_4
    sget p1, Lcom/amazon/kindle/krl/R$string;->kre_synccx_most_recent_current_location_nln:I

    return p1

    .line 191
    :cond_5
    sget p1, Lcom/amazon/kindle/krl/R$string;->current_page_footer_nln:I

    return p1
.end method

.method protected getStringFormatWithTimeRemaining(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    sget p1, Lcom/amazon/kindle/krl/R$string;->page_footer_ticr_nln:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->location_footer_ticr_nln:I

    :goto_0
    return p1
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 95
    :cond_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->getNLNText(Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeLeftInBook(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 0

    .line 204
    invoke-static {p2, p3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 208
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 209
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 211
    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForBook(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeLeftInChapter(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 0

    .line 217
    invoke-static {p2, p3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 222
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 224
    invoke-virtual {p1, p3, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isMostRecentLabel(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v0

    .line 231
    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 234
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 233
    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypointInRange(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method protected onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;-><init>(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Landroid/widget/SeekBar;)V

    .line 70
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
