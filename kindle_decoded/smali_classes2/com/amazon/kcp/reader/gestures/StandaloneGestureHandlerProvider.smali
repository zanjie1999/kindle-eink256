.class public Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;
.super Ljava/lang/Object;
.source "StandaloneGestureHandlerProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;


# static fields
.field private static final ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F = 25.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addActiveAreaGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 186
    new-instance v0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addBubbleGestureHandler(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;)V"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFooterGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 151
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->footer_tap_target_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addHeaderGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 137
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->shouldDisplayHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/thirdparty/R$integer;->header_tap_target_padding:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addOverlaysGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 73
    new-instance v0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/thirdparty/R$dimen;->tap_wiggle_threshold:I

    .line 74
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, p3, p2}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V

    .line 75
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected addBrightnessAndFontSizeGestureHandlers(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 3
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

    .line 103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;

    invoke-direct {v0, p3}, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result p2

    if-nez p2, :cond_4

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsPinchToChangeFontSize()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 120
    new-instance p2, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p3, v1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->setFontSizeGestureHandler(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;)V

    .line 125
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected addMainContentAccessibilityGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 174
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected addOrientationLockGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
            ">;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 202
    new-instance v1, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;-><init>(Lcom/amazon/kcp/reader/ui/IOrientationLockManager;Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected addPageTurnGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 86
    new-instance v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;

    .line 87
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$dimen;->fling_to_page_horiz_delta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/thirdparty/R$dimen;->fling_to_page_velocity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 89
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/amazon/kindle/thirdparty/R$dimen;->fling_to_page_horiz_delta:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;IFF)V

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addSelectionGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    if-eqz p2, :cond_0

    .line 215
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 216
    new-instance p2, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-direct {p2, p3}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 219
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected addZoomGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V
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

    .line 164
    new-instance v0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;
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

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addSelectionGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addOrientationLockGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 44
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addActiveAreaGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addMainContentAccessibilityGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 46
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addZoomGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 47
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addFooterGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 48
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addBrightnessAndFontSizeGestureHandlers(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 49
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addPageTurnGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 50
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addOverlaysGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addBubbleGestureHandler(Ljava/util/List;)V

    .line 52
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->addHeaderGestureHandler(Ljava/util/List;Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)V

    return-object v0
.end method

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

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/StandaloneGestureHandlerProvider;->createGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
