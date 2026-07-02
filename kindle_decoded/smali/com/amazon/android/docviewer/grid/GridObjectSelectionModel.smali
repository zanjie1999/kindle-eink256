.class public Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;
.super Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;
.source "GridObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private coveringArea:Landroid/graphics/Rect;

.field private minimumGraphicalHighlightInitSize:I

.field private startingHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->minimumGraphicalHighlightInitSize:I

    .line 33
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->startingHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 57
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->minimum_graphical_highlight_initial_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->minimumGraphicalHighlightInitSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;)Landroid/graphics/Rect;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getCoveringAreaForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 2

    .line 402
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    sget-object p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v0, "Grid page is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object v0

    .line 409
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridCoordFromPositionPair(II)Landroid/graphics/Rect;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    return-object p1
.end method

.method private getCoveringRectangle()Landroid/graphics/Rect;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to get covering rectangle when there is no area covered"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 350
    sget-object v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "Grid page is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    return-object v0
.end method

.method private getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 305
    instance-of v1, v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    return-object v0
.end method

.method private isValidStateForGridRectangle()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private setCoveringArea(Landroid/graphics/Rect;)V
    .locals 1

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    .line 131
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isTinySelectionArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 136
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    return-void
.end method


# virtual methods
.method public constrainToPageRectX(ILandroid/graphics/Rect;)I
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 74
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 76
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 77
    iget p2, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_1

    return p2

    .line 79
    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_2

    return p2

    :cond_2
    return p1
.end method

.method public constrainToPageRectY(ILandroid/graphics/Rect;)I
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 91
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 93
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 94
    iget p2, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_1

    return p2

    .line 96
    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_2

    return p2

    :cond_2
    return p1
.end method

.method protected createObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
    .locals 2

    .line 417
    new-instance v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;-><init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    return-object v0
.end method

.method public ensureInitialRectangleHasMinimumSize(Landroid/graphics/Rect;)V
    .locals 5

    .line 174
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->graphical_highlight_expansion_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 178
    sget v3, Lcom/amazon/kindle/krl/R$dimen;->graphical_highlight_expansion_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 179
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    invoke-static {v3, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getGridRectFromDeviceRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 188
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object v1

    .line 194
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Rect;->sort()V

    .line 196
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 197
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {v1, v1, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 199
    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getGridRectFromDeviceRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 203
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 204
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    goto :goto_0

    .line 206
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    :goto_0
    return-void
.end method

.method getCoveringArea()Landroid/graphics/Rect;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isValidStateForGridRectangle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 339
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getCoveringRectangle()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDeviceAnchors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    .line 231
    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 236
    new-instance v1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$1;-><init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public getGridAnchors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 252
    :cond_0
    new-instance v1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;-><init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public getMotionEventPointConstrainedToPageRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 2

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->constrainToPageRectX(ILandroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->constrainToPageRectY(ILandroid/graphics/Rect;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getPositionPair()Lcom/amazon/android/docviewer/grid/GridPositionRange;
    .locals 3

    .line 363
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "Grid page is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_0
    new-instance v1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getPageIndex()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-direct {v1, v0, v2}, Lcom/amazon/android/docviewer/grid/GridPositionRange;-><init>(ILandroid/graphics/Rect;)V

    return-object v1
.end method

.method protected getSelectionPageTurnListener()Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$GridSelectionPageTurnListener;-><init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;)V

    return-object v0
.end method

.method public getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStartingHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->startingHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public isEmptyGraphicalSelection()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInGraphicalMode()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTinySelectionArea()Z
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->minimumGraphicalHighlightInitSize:I

    if-ge v2, v3, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->minimumGraphicalHighlightInitSize:I

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onDoneCreatingSelection()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isEmptyGraphicalSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    :cond_0
    return-void
.end method

.method public selectNone()V
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    .line 379
    iput-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->startingHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 380
    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    .line 382
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public setCoveringArea(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, p1, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getGridRectFromDeviceRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->setCoveringArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setCoveringArea(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getCoveringAreaForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->setCoveringArea(Landroid/graphics/Rect;)V

    .line 108
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->startingHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method

.method public setCreatingSelection()V
    .locals 2

    .line 156
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isTinySelectionArea()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    :cond_1
    return-void
.end method

.method public updateAnchor(Landroid/graphics/Point;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result p3

    if-nez p3, :cond_0

    .line 271
    sget-object p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string p2, "Attempting to update anchor with no underlying covered area."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-interface {p3}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    return-void

    .line 293
    :cond_2
    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 294
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 289
    :cond_3
    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 290
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 285
    :cond_4
    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 286
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 281
    :cond_5
    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->coveringArea:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 282
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 300
    :goto_0
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    return-void
.end method
