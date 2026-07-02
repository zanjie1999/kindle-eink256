.class public final Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;
.super Ljava/lang/Object;
.source "MobiAnnotationAreaManager.java"


# static fields
.field private static final NOTE_RECTANGLE_HEIGHT:I = 0xa

.field private static final NOTE_RECTANGLE_WIDTH:I = 0xa


# instance fields
.field private final m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field private m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private final m_noteAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;",
            ">;"
        }
    .end annotation
.end field

.field private final m_pageChangedListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/RenderedDocument;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_pageChangedListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 39
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    .line 40
    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->registerKRFListener(Lcom/amazon/android/docviewer/mobi/IKRFListener;)V

    .line 41
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 45
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->rebuildNoteAreas()V

    return-void
.end method

.method private confirmTapInsideHighlightBounds(IILcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    .line 133
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 133
    invoke-virtual {p4, v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object p4

    .line 136
    invoke-static {p4}, Lcom/amazon/kcp/util/AnnotationUtils;->mergeRectangles(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 137
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 144
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private rebuildNoteAreas()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getFirstElementPositionId()I

    move-result v1

    .line 170
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v2

    if-gez v2, :cond_1

    move v2, v1

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getNotesInRange(II)Ljava/util/List;

    move-result-object v1

    .line 176
    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$1;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 187
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 188
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v3

    .line 189
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v4

    .line 190
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->createCoveringRectangles(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 193
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v4

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v5

    add-int/2addr v4, v5

    .line 196
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v3

    .line 197
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v4, 0x1e

    add-int/lit8 v7, v3, 0x1e

    invoke-direct {v5, v4, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Rect;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    .line 199
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    new-instance v5, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    invoke-direct {v5, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_pageChangedListener:Lcom/amazon/android/docviewer/mobi/IKRFListener;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->degisterKRFListener(Lcom/amazon/android/docviewer/mobi/IKRFListener;)V

    .line 50
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method getArea(III)Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;
    .locals 7

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 61
    :goto_0
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    invoke-virtual {v4, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->contains(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 64
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, p1

    .line 65
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    sub-int/2addr v6, p2

    mul-int v5, v5, v5

    mul-int v6, v6, v6

    add-int/2addr v5, v6

    if-ge v5, v1, :cond_0

    move v3, v2

    move v1, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    :goto_1
    return-object p1
.end method

.method getAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    return-object v0
.end method

.method getHighlight(IIZ)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p2

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v2, v4, p3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_2

    return-object v1

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    new-instance v3, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p3}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v4

    invoke-interface {p3}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result p3

    invoke-direct {v3, v4, p3}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p3

    if-nez p3, :cond_3

    return-object v1

    .line 118
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->confirmTapInsideHighlightBounds(IILcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_noteAreas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    .line 84
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public onAnnotationsReadEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 214
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_rebuild_note_areas_a_blocking_krf_task:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v1, v2, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-ne v1, v2, :cond_0

    .line 221
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$3;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    invoke-direct {v1, p1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v1, v2, :cond_1

    .line 230
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-ne v1, v2, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$4;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    invoke-direct {v1, p1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;Z)V

    :cond_1
    :goto_0
    return-void
.end method
