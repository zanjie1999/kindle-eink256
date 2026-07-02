.class public Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
.super Landroid/widget/LinearLayout;
.source "ObjectSelectionLayout.java"


# static fields
.field private static final HANDLE_TOUCH_PRECISION:I = 0x19


# instance fields
.field private dismissButton:Landroid/widget/ImageButton;

.field protected drawSelectionRectAndHandles:Z

.field protected infoCardContainerParent:Landroid/view/View;

.field private isPerfMetricStarted:Z

.field protected objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field protected selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

.field protected selectionOffset:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPerfMetricStarted:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    .line 95
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/reader/ReaderActivity;

    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_text_selection_handle_left_dark:I

    invoke-static {p1, p2}, Lcom/amazon/android/util/UIUtils;->getImageResourceSize(Landroid/content/res/Resources;I)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    return-void
.end method

.method private areHandlesVisible()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->supportsSelectionHandles(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    .line 472
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCoveringKindleDocColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 525
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 526
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-eq v1, v0, :cond_0

    .line 527
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 529
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    .line 530
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method private getInfoCardContainerParent()Landroid/view/View;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 648
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub_inflated:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    return-object v0
.end method

.method private isPositionVisibleOnPage(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 210
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 211
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p1

    if-gt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private pointIsInHandle(IIZ)Z
    .locals 2

    .line 452
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->areHandlesVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 455
    :cond_0
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 459
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 462
    invoke-virtual {p3, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 463
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private refreshCoveringRectangles()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v1, :cond_1

    .line 497
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getTabletSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getCoveringKindleDocColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    .line 504
    invoke-static {v1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getHighlightColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCurrentSelectionColor()I

    move-result v1

    .line 509
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v2

    .line 511
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setRectangleColor(I)V

    .line 512
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setShouldDrawHandles(Z)V

    .line 513
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setSelectionRectangles(Ljava/util/Vector;)V

    :cond_1
    return-void
.end method

.method public static supportsSelectionHandles(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)Z
    .locals 1

    .line 477
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 488
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setFontSize(I)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 241
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPerfMetricStarted:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPerfMetricStarted:Z

    .line 243
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SELECTION_BUTTON_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method protected getCardSelectionCoverage(Landroid/view/View;)I
    .locals 9

    .line 662
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    .line 666
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->getInfoCardContainer()Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_c

    .line 671
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->getInfoCardContainer()Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getContainerHeight()I

    move-result v2

    .line 673
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    sub-int/2addr v3, v2

    .line 674
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 681
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->getIsShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 682
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/InfoCardController;->shouldAllowPartiallyHidden()Z

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 687
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 688
    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-gt v8, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    or-int/2addr v4, v8

    .line 689
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v3, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    or-int/2addr v6, v7

    goto :goto_3

    .line 693
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionWidgetBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 695
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v2, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    or-int/2addr v4, v7

    .line 696
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v3, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    or-int/2addr v6, v7

    :cond_9
    if-eqz v4, :cond_f

    if-eqz v6, :cond_f

    if-eqz v0, :cond_a

    const/4 p1, 0x3

    return p1

    :cond_a
    if-eqz p1, :cond_f

    .line 706
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_b

    const/4 v4, 0x1

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    .line 707
    :goto_8
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    if-eqz v4, :cond_f

    if-eqz v6, :cond_f

    .line 711
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 712
    :goto_a
    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p1, v3, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :cond_f
    :goto_b
    if-eqz v4, :cond_10

    const/4 v1, 0x1

    goto :goto_c

    :cond_10
    if-eqz v6, :cond_11

    const/4 v1, 0x2

    :cond_11
    :goto_c
    return v1
.end method

.method public getEndHandleCoordAtPoint(II)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    new-instance p1, Landroid/graphics/Point;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 641
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getHandleRectangle(Z)Landroid/graphics/Rect;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getInfoCardHeight()I
    .locals 3

    .line 386
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 388
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method

.method protected getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lcom/amazon/kcp/util/device/SafeInsets;"
        }
    .end annotation

    .line 766
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p1, :cond_0

    .line 768
    invoke-static {p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/app/Activity;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getSelectionOffsetX()I
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getSelectionOffsetY(Z)I
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 594
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    :cond_1
    return v1
.end method

.method protected getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0

    .line 484
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionWidgetBounds()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartHandleCoordAtPoint(II)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    new-instance p1, Landroid/graphics/Point;

    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 616
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method protected isDismissButtonVisible()Z
    .locals 2

    .line 291
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newSelectionDrawable(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/SelectionDrawable;
    .locals 3

    .line 114
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->initialize(Landroid/content/res/Resources;ZLandroid/graphics/Point;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 284
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setSelectionRectangles(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 249
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->newSelectionDrawable(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    .line 252
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_dismiss_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isDismissButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;-><init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object p1

    .line 331
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getInfoCardContainerParent()Landroid/view/View;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getCardSelectionCoverage(Landroid/view/View;)I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_8

    .line 335
    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 337
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 338
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 340
    :cond_2
    sget v1, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub_inflated:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 345
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eqz v2, :cond_4

    move v6, p3

    goto :goto_3

    :cond_4
    sub-int v6, p5, v5

    .line 348
    :goto_3
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v7}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v7

    .line 350
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 351
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v9, v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    .line 354
    invoke-virtual {v7}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v2

    add-int/2addr v6, v2

    goto :goto_5

    .line 356
    :cond_6
    invoke-virtual {v7}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v2

    sub-int/2addr v6, v2

    .line 361
    :cond_7
    :goto_5
    invoke-virtual {v7}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v2

    add-int/2addr v2, p2

    .line 363
    invoke-virtual {v7}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v3

    sub-int v3, p4, v3

    add-int/2addr v5, v6

    .line 360
    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_8

    .line 366
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/InfoCardController;->getIsShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 367
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/InfoCardController;->setCardCoverage(I)V

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    if-eqz p1, :cond_9

    .line 374
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/InfoCardController;->isLastDisplayedOnBottom()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 375
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getInfoCardHeight()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    goto :goto_6

    .line 377
    :cond_9
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getInfoCardHeight()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    :cond_a
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 307
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 309
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 310
    sget-object p2, Lcom/amazon/kcp/util/device/SafeInsets;->EMPTY_INSETS:Lcom/amazon/kcp/util/device/SafeInsets;

    if-eq p1, p2, :cond_0

    .line 311
    sget p2, Lcom/amazon/kindle/krl/R$id;->info_card_widget_stub_inflated:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 315
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p1

    sub-int/2addr v2, p1

    .line 317
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 318
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq v0, v1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v1, :cond_2

    .line 157
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setSelectionRectangles(Ljava/util/Vector;)V

    .line 158
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 159
    instance-of v2, v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    if-eqz v2, :cond_1

    .line 160
    move-object v2, v0

    check-cast v2, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getDeviceAnchors()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->gridDeviceAnchors:Ljava/util/List;

    .line 162
    :cond_1
    sget-object v2, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    .line 164
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    .line 165
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPositionVisibleOnPage(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isStartHandleVisible:Z

    .line 166
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPositionVisibleOnPage(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isEndHandleVisible:Z

    :cond_2
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v1, v2, :cond_3

    .line 172
    new-instance v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v1, :cond_4

    .line 179
    new-instance v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$2;-><init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;)V

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_5

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 193
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onSelectionAreaChanged()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->refreshCoveringRectangles()V

    .line 217
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onSelectionStateChanged()V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_2

    .line 539
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 540
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 543
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->dismissButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 547
    :cond_1
    :goto_0
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isPerfMetricStarted:Z

    .line 549
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SELECTION_BUTTON_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public pointIsInEndHandle(II)Z
    .locals 2

    .line 448
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInHandle(IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public pointIsInStartHandle(II)Z
    .locals 2

    .line 436
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInHandle(IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public refreshSelectionButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 0

    return-void
.end method

.method public setDrawSelectionRectAndHandles(Z)V
    .locals 0

    .line 745
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 747
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    goto :goto_0

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-nez p1, :cond_1

    .line 749
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->newSelectionDrawable(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->drawSelectionRectAndHandles:Z

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setFontSize(I)V

    :cond_0
    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onSelectionAreaChanged()V

    :cond_1
    return-void
.end method

.method public showSelectionHandles(Z)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->setShouldDrawHandles(Z)V

    .line 761
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void
.end method
