.class public Lcom/amazon/nwstd/gestures/TextViewGestureHandler;
.super Ljava/lang/Object;
.source "TextViewGestureHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/gesture/IGestureHandler;


# instance fields
.field private mActivePointerCount:I

.field private mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field private mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    .line 30
    iput-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 31
    iput-object p2, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 32
    iput-object p3, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public isPointerActive()Z
    .locals 2

    .line 157
    iget v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onActivate()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    return-void
.end method

.method public onDoubleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 3

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTouchEventEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 132
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mPeriodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeTextView(Z)V

    .line 135
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "NewsstandTextView"

    const-string v2, "ExitWithDoubleTap"

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 120
    iget p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    const/4 p1, 0x0

    return p1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 4

    .line 97
    iget v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v2, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v3, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 104
    invoke-virtual {v0, p1, v3}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getPageTurnOffset()I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mGestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public onHoverEnter(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverExit(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 61
    iget p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 53
    iget p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 54
    iput p1, p0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->mActivePointerCount:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTwoFingerMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
