.class public Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;
.super Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;
.source "KRIFObjectSelectionModel.java"

# interfaces
.implements Lcom/amazon/krf/platform/SelectionChangeListener;


# static fields
.field private static final DEBUG_LOGS_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedText:Ljava/lang/String;

.field private consecutiveWhiteSpacePattern:Ljava/util/regex/Pattern;

.field private creatingDefaultGHL:Ljava/lang/Runnable;

.field private firstSelectedPosition:Lcom/amazon/krf/platform/Position;

.field private isSelectionEditable:Z

.field krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

.field private lastSelectedPosition:Lcom/amazon/krf/platform/Position;

.field private wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->isSelectionEditable:Z

    const-string p1, "[\\s&&[^ ]]|\\s\\s+"

    .line 91
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->consecutiveWhiteSpacePattern:Ljava/util/regex/Pattern;

    .line 92
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getDefaultSelectionColor()I
    .locals 2

    .line 570
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 572
    sget v1, Lcom/amazon/kindle/renderingmodule/R$color;->selection_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    return-object v0
.end method

.method private logState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private onClearSelection()V
    .locals 4

    const-string v0, "onClearSelection called"

    .line 550
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->UNKNOWN:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    .line 554
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v1, 0x1

    .line 555
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->isSelectionEditable:Z

    .line 556
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 557
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v1, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getDefaultSelectionColor()I

    move-result v2

    .line 562
    sget-object v3, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NORMAL:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    .line 564
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    const-string v0, "onClearSelection completed"

    .line 566
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    return-void
.end method

.method private updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 588
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 590
    :goto_2
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ne v2, v3, :cond_5

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 592
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    .line 593
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-ne v4, v0, :cond_5

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    .line 595
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 596
    :cond_5
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    .line 597
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    .line 598
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    :cond_6
    return-void
.end method


# virtual methods
.method addHighlightFromSelection(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 539
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v0, v2, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addGraphicalHighlight(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getPreviousElementInPagePosition(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getNextElementInPagePosition(I)I

    move-result v5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addHighlight(IIIILjava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public addWordToEndOfSelection()Ljava/lang/String;
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v2, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageEndPosition()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 402
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-virtual {p0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelection(II)V

    .line 405
    iget-object v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public addWordToStartOfSelection()Ljava/lang/String;
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v2, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 369
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    .line 371
    iget v1, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelection(II)V

    .line 372
    iget-object v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method areOnlyImagesSelected()Z
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionTypes()Ljava/util/EnumSet;

    move-result-object v0

    .line 581
    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->VIEWABLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected createObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
    .locals 4

    .line 698
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    .line 699
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object v2

    .line 700
    invoke-static {}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->getInstance()Lcom/amazon/kcp/debug/IAIRInCSUtil;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;-><init>(Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/debug/IAIRInCSUtil;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->wordTokenIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 679
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->dispose()V

    return-void
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRects()Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 194
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getFirstSelectedPositionId()I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    long-to-int v1, v0

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getLastSelectedPositionId()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    long-to-int v1, v0

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNextElementInPagePosition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPreviousElementInPagePosition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getSelectedFirstWordStartId()I
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 115
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1, v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 118
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    :cond_0
    if-gt v2, v0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getSelectedLastWordEndId()I
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    .line 134
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v1, v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 137
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget v3, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 140
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    :cond_1
    if-gt v2, v0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public getSelectedLastWordStartId()I
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    .line 153
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 156
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    :cond_0
    if-gt v2, v0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x7

    new-instance v3, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    .line 173
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    new-instance v4, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    .line 174
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 172
    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x2

    new-instance v3, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    .line 177
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    new-instance v4, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    .line 178
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 176
    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/String;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedTextFromKRF()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    const/16 v1, 0x20

    .line 226
    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/util/StringUtils;->getNthOccurrenceOf(Ljava/lang/String;CI)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method getSelectedTextFromKRF()Ljava/lang/String;
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->consecutiveWhiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTextToSearch()Ljava/lang/String;
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTextBetweenPositions(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_3

    .line 338
    invoke-interface {v0}, Lcom/amazon/krf/platform/SelectionState;->getSelectionTypes()Ljava/util/EnumSet;

    move-result-object v0

    .line 339
    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0

    .line 341
    :cond_0
    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->GRAPHICAL:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0

    .line 344
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->isSelectionEditable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    :goto_0
    return-object v0

    .line 348
    :cond_3
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0
.end method

.method public getTabletSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public onSelectionChange(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 2

    .line 467
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    const-string v0, "onSelectionChange called"

    .line 468
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    .line 474
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->creatingDefaultGHL:Ljava/lang/Runnable;

    .line 475
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 478
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionToolType()Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    .line 479
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionMode()Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    .line 481
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/rendering/KRIFView;

    .line 482
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NORMAL:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    .line 483
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getCurrentSelectionColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    const-string p1, "onSelectionChange complete"

    .line 485
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    return-void
.end method

.method public onSelectionFinalized(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 3

    const-string v0, "onSelectionFinalized called"

    .line 490
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    .line 492
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionToolType()Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    .line 493
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionMode()Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 501
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->creatingDefaultGHL:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 503
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->creatingDefaultGHL:Ljava/lang/Runnable;

    .line 504
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 505
    :cond_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->isSelectionCleared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->onClearSelection()V

    goto :goto_0

    .line 508
    :cond_1
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    .line 509
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_2

    .line 510
    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    const-string v1, "ExtendHighlight"

    .line 512
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->addHighlightFromSelection(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 515
    :cond_2
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    .line 516
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 519
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_3

    .line 520
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->shouldDisplaySelectionButtonsOnQH()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz p1, :cond_4

    .line 525
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->selectNone()V

    .line 530
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    :cond_4
    const/4 p1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    const-string p1, "onSelectionFinalized handled as a non-clearing selection"

    .line 533
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSelectionStart(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 2

    const-string v0, "onSelectionStart called"

    .line 436
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 439
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    .line 440
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V

    .line 442
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_1

    .line 443
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionTypes()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->GRAPHICAL:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    goto :goto_0

    .line 447
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    goto :goto_0

    .line 450
    :cond_1
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_2

    .line 451
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "onSelectionStart callback received from KRF, however we are not in a nothing selected or selection finalized state!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 457
    :cond_3
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 459
    :goto_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/SelectionState;->getSelectionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    const-string p1, "onSelectionStart complete"

    .line 462
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    return-void
.end method

.method public reInitializeOnOrientationChange()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->krfSelectionState:Lcom/amazon/krf/platform/SelectionState;

    .line 610
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 611
    invoke-direct {p0, v0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->updateSelectedArea(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    :cond_0
    return-void
.end method

.method public removeWordFromEndOfSelection()Ljava/lang/String;
    .locals 7

    .line 415
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 418
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    .line 419
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 420
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    .line 421
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-virtual {p0, v3, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelection(II)V

    .line 422
    iget-object v0, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeWordFromStartOfSelection()Ljava/lang/String;
    .locals 7

    .line 382
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->firstSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 385
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    .line 386
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v4}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 387
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    .line 388
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->lastSelectedPosition:Lcom/amazon/krf/platform/Position;

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelection(II)V

    .line 389
    iget-object v0, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectNone()V
    .locals 2

    const-string v0, "Clearing Selection via selectNone()"

    .line 238
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 241
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    :cond_0
    return-void
.end method

.method public setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    return-void
.end method

.method public setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Setting selected highlight via setSelectedHighlight(IAnnotation)"

    .line 292
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 295
    sget-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    .line 296
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    .line 299
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 300
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 301
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 302
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 305
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 308
    :goto_0
    new-instance v3, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v3, v2, v1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 309
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V

    if-eqz v0, :cond_3

    .line 313
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 314
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 313
    invoke-virtual {v1, v2, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 316
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getHighlightColor(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_2

    .line 319
    sget-object p2, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NORMAL:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    .line 320
    :goto_1
    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    .line 321
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    :cond_3
    return-void
.end method

.method public setSelection(II)V
    .locals 2

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 269
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    const-string v0, "Setting selection via setSelection(IPosition, IPosition)"

    .line 274
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->logState(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 277
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method public setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 260
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->isSelectionEditable:Z

    .line 262
    sget-object p1, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getDefaultSelectionColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    :cond_0
    return-void
.end method

.method public setStateCreatingAnnotation()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    return-void
.end method
