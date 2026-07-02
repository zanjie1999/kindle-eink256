.class public Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;
.super Ljava/lang/Object;
.source "GestureHandlerProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendActiveAreaGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendBubbleGestureHandler(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendFooterGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$integer;->footer_tap_target_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private appendHeaderGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldDisplayHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$integer;->header_tap_target_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private appendMainContentAccessibilityGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private appendOverlaysGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tap_wiggle_threshold:I

    .line 137
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V

    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendPageTurnGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->fling_to_page_horiz_delta:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->fling_to_page_velocity:I

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->fling_to_page_horiz_delta:I

    .line 61
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;IFF)V

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendSelectionGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    new-instance p2, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-direct {p2, p3}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private appendZoomGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")V"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendSelectionGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 38
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendActiveAreaGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 39
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendMainContentAccessibilityGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendZoomGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 41
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendFooterGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 42
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendPageTurnGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 43
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendOverlaysGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 44
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendBubbleGestureHandler(Ljava/util/List;)V

    .line 45
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->appendHeaderGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    return-object v0
.end method


# virtual methods
.method public getGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kcp/reader/gestures/GestureService;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureHandlerProvider;->createGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
