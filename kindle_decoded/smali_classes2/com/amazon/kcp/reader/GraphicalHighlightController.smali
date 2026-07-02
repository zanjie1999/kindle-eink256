.class public Lcom/amazon/kcp/reader/GraphicalHighlightController;
.super Ljava/lang/Object;
.source "GraphicalHighlightController.java"


# static fields
.field private static final INVALID_ANCHOR:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private anchorId:I

.field private final anchorTrackingDistance:I

.field private final objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

.field private final readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    .line 47
    check-cast p2, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    .line 48
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->graphical_highlight_anchor_tracking_distance:I

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorTrackingDistance:I

    return-void
.end method

.method private distance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6

    .line 116
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    sub-double/2addr v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private eventPointToPosition(Landroid/view/MotionEvent;)I
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    .line 92
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGeometricPositionFromDevicePoint(Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method private handleMove(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->moreThanMinMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->updateSelection(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private setAnchor(IIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->updateAnchor(Landroid/graphics/Point;ILjava/util/List;)V

    return-void
.end method

.method private updateRect(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    .line 187
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridAnchors()Ljava/util/List;

    move-result-object v1

    .line 188
    iget v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getStartingHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->indexOfClosestPointInRangeFromList(Landroid/graphics/Point;Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    .line 191
    :cond_0
    iget v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    if-ne v2, v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 195
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->ensureInitialRectangleHasMinimumSize(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 198
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->setAnchor(IIILjava/util/List;)V

    :goto_0
    return v3
.end method

.method private updateSelection(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 173
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->updateRect(Landroid/view/MotionEvent;)Z

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->onDoneCreatingSelection()V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 177
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->setCreatingSelection()V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getObjectSelectionViewBounds()Landroid/graphics/Rect;
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    .line 266
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    .line 267
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public graphicalHighlightEventIsIn(Landroid/view/MotionEvent;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->eventPointToPosition(Landroid/view/MotionEvent;)I

    move-result p1

    .line 67
    new-instance v1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    invoke-direct {v1, p1, p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;-><init>(II)V

    .line 68
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    .line 69
    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getFirstGraphicalHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 251
    sget-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid event action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleMove(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 244
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->updateSelection(Landroid/view/MotionEvent;)Z

    .line 247
    iput v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridAnchors()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->indexOfClosestPointInRangeFromList(Landroid/view/MotionEvent;Ljava/util/List;)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 231
    iput v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorId:I

    .line 232
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    .line 233
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, p1, v4, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->setAnchor(IIILjava/util/List;)V

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public handleLongPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 207
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->setCoveringArea(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p2, p1, p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->setCoveringArea(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected indexOfClosestPointInRangeFromList(Landroid/graphics/Point;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 130
    :cond_1
    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object v0

    .line 133
    iget v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->anchorTrackingDistance:I

    int-to-double v2, v2

    const/4 v4, 0x0

    .line 136
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 137
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 138
    invoke-interface {v0, v5}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getDevicePointFromGridPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 139
    invoke-direct {p0, v5, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v5

    cmpg-double v7, v5, v2

    if-gez v7, :cond_2

    move v1, v4

    move-wide v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected indexOfClosestPointInRangeFromList(Landroid/view/MotionEvent;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->indexOfClosestPointInRangeFromList(Landroid/graphics/Point;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public isActive()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightController;->objectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
