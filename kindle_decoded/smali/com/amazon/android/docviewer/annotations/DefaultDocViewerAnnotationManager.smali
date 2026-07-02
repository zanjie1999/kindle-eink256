.class public final Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;,
        Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;,
        Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;,
        Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;,
        Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationComparator;
    }
.end annotation


# static fields
.field private static final AVAILABLE_SPACE_WARNING_THRESHOLD:J = 0x32000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

.field private annotationsForRangeCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private availableSpace:J

.field private final bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasReadAnnotations:Z

.field private m_annotatedTextExtractor:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

.field private final m_annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_bookId:Ljava/lang/String;

.field private final m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private m_context:Landroid/content/Context;

.field private m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

.field private final m_isMop:Z

.field private m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

.field private final m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private nextForcedLprPosition:I

.field whiteSpacePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\s+"

    const/16 v1, 0x8

    .line 103
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->whiteSpacePattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    .line 113
    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotatedTextExtractor:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->nextForcedLprPosition:I

    const-wide/16 v1, -0x1

    .line 132
    iput-wide v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->availableSpace:J

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->hasReadAnnotations:Z

    .line 143
    new-instance v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationComparator;

    invoke-direct {v2, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationComparator;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$1;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->comparator:Ljava/util/Comparator;

    .line 157
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    .line 162
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    .line 164
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 166
    iput-object p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotatedTextExtractor:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    .line 167
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    .line 168
    iget-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookId:Ljava/lang/String;

    .line 169
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 170
    instance-of p2, p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    .line 171
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 172
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    .line 173
    iput-object p4, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotatedTextExtractor:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    return-object p0
.end method

.method private addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1452
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z
    .locals 5

    .line 1464
    iget-wide v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->availableSpace:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->checkAvailableSpace()V

    :cond_0
    const/4 v0, 0x0

    .line 1469
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/Annotation;->setAnnotationAction(I)V

    .line 1470
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->create(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v0

    .line 1475
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Annotation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Annotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Annotation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1480
    :try_start_2
    sget-object v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to sort annotations exception"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1482
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    .line 1483
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 1485
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    .line 1486
    sget-object p2, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    .line 1488
    :cond_2
    sget-object p2, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->ADD:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1490
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1491
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "EntryPoint"

    .line 1492
    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/application/EventSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object v1

    const/4 v2, 0x0

    .line 1496
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Annotation;->getType()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v1, 0x7

    if-eq v3, v1, :cond_3

    .line 1517
    sget-object p2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Annotation;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while adding annotation"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1503
    :cond_3
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "HighlightColor"

    .line 1502
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AddGraphicalHighlight"

    goto :goto_1

    .line 1508
    :cond_4
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "HighlightColor"

    .line 1507
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "HIGHLIGHT"

    .line 1509
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/EventSettingsController;->saveLastAnnotationCreateTime(Ljava/lang/String;)V

    const-string v2, "AddHighlight"

    goto :goto_1

    .line 1513
    :cond_5
    iget-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    const-string p1, "NOTE"

    .line 1514
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/EventSettingsController;->saveLastAnnotationCreateTime(Ljava/lang/String;)V

    const-string v2, "AddNote"

    goto :goto_1

    :cond_6
    const-string v2, "AddBookmark"

    :goto_1
    if-eqz v2, :cond_7

    .line 1520
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, p3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v0

    :catchall_0
    move-exception p1

    .line 1483
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private addGraphicalHighlightImpl(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    .line 1779
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 1780
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const/4 v0, 0x0

    .line 1781
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGraphicalHighlightsCoveredOrCoveringRange(Lcom/amazon/android/docviewer/IPositionRange;Z)Ljava/util/List;

    move-result-object p1

    .line 1783
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1784
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    goto :goto_0

    .line 1787
    :cond_0
    invoke-direct {p0, v5}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGraphicalHighlightsStartedWithPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1788
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    goto :goto_1

    :cond_1
    new-array v7, v0, [B

    .line 1796
    new-instance p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v2, 0x7

    const/4 v6, 0x0

    const-string v1, ""

    move-object v0, p1

    move-object v3, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    const/4 p2, 0x1

    .line 1805
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    return-object p1
.end method

.method private addNote(IIILjava/lang/String;Ljava/util/Map;IZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v2, p3

    .line 1160
    invoke-static/range {p4 .. p4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move/from16 v1, p6

    if-eq v1, v0, :cond_0

    goto/16 :goto_2

    .line 1163
    :cond_0
    invoke-virtual {v8, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->checkForExistingNote(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v4, p4

    .line 1168
    invoke-virtual {v8, v3, v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p4

    .line 1170
    iget-boolean v3, v8, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v3, :cond_2

    .line 1171
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v5, "MopDoc"

    const-string v6, "Add_NOTE"

    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_2
    iget-object v3, v8, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v14

    .line 1175
    iget-object v3, v8, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3, v14}, Lcom/amazon/android/docviewer/KindleDoc;->getPageState(I)[B

    move-result-object v16

    const v3, 0x7fffffff

    move/from16 v5, p2

    .line 1178
    invoke-direct {v8, v5, v2, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookText(III)Ljava/lang/String;

    move-result-object v10

    .line 1181
    new-instance v7, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    move-object v9, v7

    move/from16 v11, p6

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v15, p4

    move-object/from16 v17, p5

    invoke-direct/range {v9 .. v17}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V

    move-object/from16 v9, p8

    .line 1189
    invoke-direct {v8, v7, v0, v9}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    move/from16 v1, p1

    if-lt v2, v1, :cond_3

    if-eqz p7, :cond_3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v5, p5

    move-object v10, v7

    move-object/from16 v7, p8

    .line 1193
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addOrEditHighlight(IIIILjava/util/Map;ZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    goto :goto_0

    :cond_3
    move-object v10, v7

    :goto_0
    move-object v0, v10

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkAvailableSpace()V
    .locals 5

    .line 1532
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v0

    .line 1533
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1534
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->availableSpace:J

    const-wide/32 v2, 0x32000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->annotation_low_space_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->annotation_low_space_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1540
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private deleteAdjacentHighlightForMerge(IILjava/util/Map;Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/List;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)",
            "Lcom/amazon/android/docviewer/IPositionRange;"
        }
    .end annotation

    .line 1400
    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1401
    invoke-interface {p4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p4

    .line 1402
    invoke-static {p3}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationSelectionType(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1406
    invoke-virtual {p0, v2, p2, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1410
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    invoke-virtual {p0, v2, p1, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1411
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, p1, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    .line 1417
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    const-string/jumbo p1, "mchl_color"

    .line 1418
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1421
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1422
    invoke-static {p3}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-static {p3}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1427
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1429
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1430
    :cond_3
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, p4}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p4

    .line 1433
    :cond_4
    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1435
    invoke-direct {p0, p3, v2, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ZLjava/lang/String;)Z

    goto :goto_2

    .line 1439
    :cond_5
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {p1, v0, p4}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object p1
.end method

.method private deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ZLjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 849
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 850
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightCoveringPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p0, v1, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1

    .line 858
    :try_start_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 859
    iget-object v4, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v4}, Landroidx/collection/LruCache;->evictAll()V

    .line 860
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    .line 863
    move-object v1, p1

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/Annotation;->setAnnotationAction(I)V

    .line 864
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 865
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v1, :cond_2

    .line 866
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 867
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v4, "MopDoc"

    const-string v5, "Remove_HIGHLIGHT"

    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 869
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v4, "MopDoc"

    const-string v5, "Remove_NOTE"

    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 875
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "EntryPoint"

    .line 876
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    .line 880
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v3, :cond_4

    .line 892
    sget-object v3, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected invalid type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " while deleting annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "RemoveHighlight"

    goto :goto_1

    .line 886
    :cond_5
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    const-string v1, "RemoveNote"

    goto :goto_1

    :cond_6
    const-string v1, "RemoveBookmark"

    :goto_1
    if-eqz v1, :cond_7

    .line 896
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 903
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    .line 904
    sget-object p2, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    .line 906
    :cond_8
    sget-object p2, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->DELETE:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v2

    :catchall_0
    move-exception p1

    .line 860
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    return v0
.end method

.method private doesAnnotationACoverAnnotationB(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 794
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 795
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private downloadAnnotationSidecarIfRequested()V
    .locals 2

    .line 1735
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1741
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    return-void
.end method

.method private filterAnnotationsForCriterion(Ljava/util/List;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;",
            "Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1080
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1081
    invoke-interface {p2, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;->isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    :cond_1
    sget-object v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    .line 1088
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findMinimumSpanningAnnotation(Ljava/util/List;ILcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;I",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 761
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    if-eq v2, p2, :cond_1

    goto :goto_0

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    .line 766
    invoke-interface {v2, p3}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 769
    sget-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    goto :goto_1

    .line 771
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->doesAnnotationACoverAnnotationB(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    sget-object v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getAllAnnotationsForCriterion(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1

    .line 1110
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1111
    invoke-interface {p1, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;->isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1119
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAnnotationsOnCurrentPage(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1096
    invoke-direct {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1098
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1100
    invoke-virtual {p0, p1, v2, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1104
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getAnnotationsOverlappingRange(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    new-instance v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/IPositionRange;)V

    invoke-direct {p0, v0, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->filterAnnotationsForCriterion(Ljava/util/List;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;

    move-result-object v0

    .line 1072
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1072
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;
    .locals 1

    .line 1867
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getBookText(III)Ljava/lang/String;
    .locals 5

    const/4 v0, -0x1

    if-eq v0, p1, :cond_5

    if-ne v0, p2, :cond_0

    goto :goto_1

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 1562
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    .line 1564
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 1565
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v4

    if-gt v4, p1, :cond_1

    invoke-interface {v2}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v4

    if-lt v4, p2, :cond_1

    .line 1566
    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1568
    iget-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 1571
    iget-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1573
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookTextWithWordIterator(III)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 1580
    iget-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1582
    :cond_4
    invoke-static {p1}, Lcom/amazon/android/util/CharacterAnalyzer;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1557
    :cond_5
    :goto_1
    sget-object p2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid element id, currentPos: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endPos: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getBookTextWithWordIterator(III)Ljava/lang/String;
    .locals 4

    .line 1594
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1600
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_3

    if-eqz v0, :cond_3

    .line 1603
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1604
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    .line 1605
    iget v3, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-le v3, p2, :cond_1

    goto :goto_1

    .line 1609
    :cond_1
    iget-object v3, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 1610
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    iget v2, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-lt v2, p2, :cond_2

    goto :goto_1

    .line 1616
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1619
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGraphicalHighlightsCoveredOrCoveringRange(Lcom/amazon/android/docviewer/IPositionRange;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1211
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1212
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const/4 v2, 0x7

    .line 1210
    invoke-virtual {p0, v2, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object v0

    .line 1214
    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/IPositionRange;Z)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->filterAnnotationsForCriterion(Ljava/util/List;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getGraphicalHighlightsStartedWithPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 1766
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$10;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$10;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAllAnnotationsForCriterion(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getHighlightOrGLHCoveringArea(ZLcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 681
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 684
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->findMinimumSpanningAnnotation(Ljava/util/List;ILcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method private mergeCollidedHighlights(Ljava/util/List;IILjava/util/List;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;II",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)",
            "Lcom/amazon/android/docviewer/IPositionRange;"
        }
    .end annotation

    .line 1370
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 1371
    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 1373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1375
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 1376
    :cond_0
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 1379
    :cond_1
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1381
    invoke-direct {p0, p3, v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ZLjava/lang/String;)Z

    goto :goto_0

    .line 1384
    :cond_2
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {p1, v0, p2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object p1
.end method

.method private reportInBookChromeBookmarkMetric(ZLjava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 460
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->ADD_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->REMOVE_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    :goto_0
    if-eqz p2, :cond_8

    const/4 v0, -0x1

    .line 463
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x24897f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x25d6af

    if-eq v1, v2, :cond_2

    const v2, 0x7e1a1d1b

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "BookmarkView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "Page"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "Menu"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    .line 474
    sget-object p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid entry point "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 471
    :cond_5
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    invoke-static {p2, p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_2

    .line 468
    :cond_6
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->DIALOG:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    invoke-static {p2, p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_2

    .line 465
    :cond_7
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    invoke-static {p2, p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 1848
    new-instance v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;-><init>(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1849
    iget-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V
    .locals 2

    .line 1817
    new-instance v0, Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;-><init>(ILcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    if-eqz p2, :cond_0

    .line 1819
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 1822
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removeAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1825
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V
    .locals 1

    .line 1836
    new-instance v0, Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;-><init>(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    .line 1837
    iget-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public addGraphicalHighlight(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    .line 1244
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addGraphicalHighlightImpl(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public addHighlight(IIIILjava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1249
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addOrEditHighlight(IIIILjava/util/Map;ZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public addHighlight(IIIILjava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 1254
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addOrEditHighlight(IIIILjava/util/Map;ZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public addNote(IIILjava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1135
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addNote(IIILjava/lang/String;Ljava/util/Map;IZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public addNote(IIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    .line 1140
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addNote(IIILjava/lang/String;Ljava/util/Map;IZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method addOrEditHighlight(IIIILjava/util/Map;ZLjava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    .line 1258
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    iget-boolean v0, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v0, :cond_0

    .line 1261
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MopDoc"

    const-string v2, "Add_HIGHLIGHT"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    move/from16 v21, v1

    move v1, v0

    move/from16 v0, v21

    :cond_1
    const/4 v9, 0x2

    .line 1274
    invoke-virtual {v6, v9, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v2

    .line 1278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    :cond_2
    move-object v12, v11

    .line 1279
    :goto_0
    invoke-direct {v6, v2, v0, v1, v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->mergeCollidedHighlights(Ljava/util/List;IILjava/util/List;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, v8

    .line 1282
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAdjacentHighlightForMerge(IILjava/util/Map;Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/List;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    .line 1285
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 1286
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 1288
    iget-object v2, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v2

    .line 1289
    iget-object v3, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageState(I)[B

    move-result-object v20

    const v3, 0x7fffffff

    .line 1292
    invoke-direct {v6, v1, v0, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookText(III)Ljava/lang/String;

    move-result-object v14

    .line 1295
    new-instance v3, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v15, 0x2

    const/16 v19, 0x0

    move-object v13, v3

    move/from16 v16, v1

    move/from16 v17, v0

    move/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    if-eqz p6, :cond_3

    if-eqz v12, :cond_3

    .line 1305
    invoke-static {v12}, Lcom/amazon/kindle/util/JsonUtils;->mutableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p5, :cond_4

    .line 1307
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1312
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/amazon/kindle/util/JsonUtils;->unmodifiableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1314
    :cond_4
    invoke-virtual {v3, v0}, Lcom/amazon/kcp/reader/Annotation;->setMetadata(Ljava/util/Map;)V

    .line 1316
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1317
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    goto :goto_2

    .line 1318
    :cond_5
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1319
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    goto :goto_2

    :cond_6
    move-object v0, v11

    .line 1321
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1323
    invoke-direct {v6, v3, v10, v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    if-eqz v0, :cond_9

    .line 1325
    iget-object v1, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {v1, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;

    move-result-object v1

    .line 1326
    invoke-interface {v1, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;

    move-result-object v0

    .line 1327
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->created()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object v0

    .line 1328
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 1335
    invoke-direct {v6, v3, v1, v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1336
    new-instance v1, Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-direct {v1, v9, v6}, Lcom/amazon/kindle/event/AnnotationManagerEvent;-><init>(ILcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    .line 1337
    invoke-virtual {v1, v11, v8}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->setAnnotations(Ljava/util/List;Ljava/util/List;)V

    .line 1338
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1339
    iget-object v2, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1340
    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {v6, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 1343
    iget-object v1, v6, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {v1, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;

    move-result-object v1

    .line 1344
    invoke-interface {v1, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;

    move-result-object v0

    .line 1345
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object v0

    .line 1346
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    :cond_9
    :goto_3
    const-string v0, "QuickHighlight"

    .line 1350
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "SelectionButtonHighlight"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1351
    :cond_a
    invoke-static {}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;->recordQuickHighlightExperimentMetrics()V

    :cond_b
    return-object v3
.end method

.method public canBookmark()Z
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    return v0
.end method

.method public checkForExistingNote(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    const/4 v0, 0x1

    .line 624
    invoke-virtual {p0, v0, p1, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 628
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 630
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkForExistingNote(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 646
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkForExistingNote(Lcom/amazon/android/docviewer/IPageElement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 639
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 641
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->checkForExistingNote(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 837
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 843
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteNoteOnly(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 804
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1

    .line 810
    :try_start_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 811
    iget-object v4, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v4}, Landroidx/collection/LruCache;->evictAll()V

    .line 812
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 815
    move-object v1, p1

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/Annotation;->setAnnotationAction(I)V

    .line 816
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v1, :cond_2

    .line 818
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 819
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v3, "MopDoc"

    const-string v4, "Remove_HIGHLIGHT"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 821
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v3, "MopDoc"

    const-string v4, "Remove_NOTE"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    .line 825
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    .line 826
    sget-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    .line 827
    sget-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->DELETE:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v2

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    .line 812
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return v0
.end method

.method public editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 570
    instance-of v3, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    .line 571
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    .line 572
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 578
    :cond_1
    new-instance v3, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v9

    .line 579
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v10

    .line 580
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v11

    .line 581
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v12

    .line 582
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v13

    .line 584
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v15

    move-object v8, v3

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[B)V

    .line 585
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v4

    .line 586
    invoke-virtual {v3, v4}, Lcom/amazon/kcp/reader/Annotation;->setMetadata(Ljava/util/Map;)V

    .line 589
    iget-object v4, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v4

    .line 590
    :try_start_0
    iget-object v5, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 592
    iget-object v5, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v5, v3}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v6

    :cond_2
    if-eqz v6, :cond_3

    .line 598
    iget-object v5, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v5, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 601
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    .line 604
    invoke-direct {v1, v3, v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    .line 605
    sget-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {v1, v0, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_1

    .line 607
    :cond_4
    invoke-direct {v1, v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;)Z

    .line 611
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "EntryPoint"

    .line 613
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "EditNote"

    invoke-virtual {v0, v2, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {v0, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->note(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$NoteBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->edited()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 601
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceNextLprToHavePosition(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->nextForcedLprPosition:I

    return-void
.end method

.method public getAnnotationAtIndex(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    .line 1624
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v0

    if-ltz p1, :cond_1

    .line 1625
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    .line 1626
    :cond_1
    :goto_0
    sget-object v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received request for invalid annotation at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1628
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1631
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 2

    .line 519
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$2;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAllAnnotationsForCriterion(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getAnnotationsOverlappingRange(III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 933
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p2, p3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p2

    if-nez p1, :cond_0

    .line 942
    iget-object p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 943
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;IZLcom/amazon/android/docviewer/IPositionRange;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->filterAnnotationsForCriterion(Ljava/util/List;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    return-object v0
.end method

.method public getFirstGraphicalHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 655
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGraphicalHighlightsCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;

    move-result-object p1

    .line 656
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :goto_0
    return-object p1
.end method

.method public getGHLCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    const/4 v0, 0x1

    .line 677
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightOrGLHCoveringArea(ZLcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicalHighlightsCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 661
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGraphicalHighlightsCoveredOrCoveringRange(Lcom/amazon/android/docviewer/IPositionRange;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightOrGLHCoveringArea(ZLcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getHighlightCoveringPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 667
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 921
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 922
    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {p1, v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->isEqual(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getNotesInRange(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasBookmark()Z
    .locals 2

    const/4 v0, 0x0

    .line 481
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOnCurrentPage(I)Ljava/util/List;

    move-result-object v1

    .line 482
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasBookmark(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasReadAnnotations()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->hasReadAnnotations:Z

    return v0
.end method

.method public prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V

    new-instance v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    .line 991
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public declared-synchronized readAnnotations()V
    .locals 7

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->hasReadAnnotations:Z

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->readAll()Ljava/util/List;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 188
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 192
    instance-of v4, v3, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    .line 194
    move-object v5, v3

    check-cast v5, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;->setBegin(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 195
    check-cast v3, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;->setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 202
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->hasReadAnnotations:Z

    .line 203
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    .line 204
    invoke-direct {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->downloadAnnotationSidecarIfRequested()V

    .line 210
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$1;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 200
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 217
    :cond_4
    sget-object v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->TAG:Ljava/lang/String;

    const-string v1, "Avoiding loading of annotation, already loaded"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 244
    new-instance v3, Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-direct {v3, v2, v0, v1}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    iput-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-direct {v0, v2, v2, v1}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->stopPopulateBookText()V

    .line 263
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->annotationsForRangeCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 264
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z
    .locals 1

    .line 533
    instance-of v0, p1, Lcom/amazon/kcp/reader/Note;

    if-eqz v0, :cond_0

    .line 534
    check-cast p1, Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    .line 536
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->mutableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez p4, :cond_2

    .line 537
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_2
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setMetadata(Ljava/util/Map;)V

    .line 540
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    if-eqz p5, :cond_3

    .line 542
    sget-object p1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setHasReadAnnotations(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->hasReadAnnotations:Z

    return-void
.end method

.method public startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)V"
        }
    .end annotation

    .line 999
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->stopPopulateBookText()V

    .line 1001
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Landroid/widget/ArrayAdapter;)V

    new-instance p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$7;

    invoke-direct {p1, p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$7;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Ljava/util/List;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopPopulateBookText()V
    .locals 1

    const/4 v0, 0x1

    .line 1031
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->stopPopulateBookText(Z)V

    return-void
.end method

.method public stopPopulateBookText(Z)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->stopTask(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 1040
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_fetchNotesTextTask:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;

    return-void
.end method

.method public toggleBookmark(Ljava/lang/String;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 376
    invoke-direct {v0, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOnCurrentPage(I)Ljava/util/List;

    move-result-object v3

    .line 378
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "accessibility"

    const-string v6, "MopDoc"

    if-lez v4, :cond_3

    .line 379
    iget-boolean v4, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v4, :cond_0

    .line 380
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    const-string v7, "Remove_BOOKMARK"

    invoke-virtual {v4, v6, v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 383
    invoke-virtual {v0, v4, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    goto :goto_0

    .line 386
    :cond_1
    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->reportInBookChromeBookmarkMetric(ZLjava/lang/String;)V

    .line 388
    iget-object v1, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 389
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p2, :cond_2

    return-void

    .line 393
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 395
    iget-object v2, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/krl/R$string;->removing_bookmark:I

    .line 396
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 395
    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_3

    .line 401
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 402
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 403
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    :cond_5
    if-eqz v7, :cond_9

    .line 404
    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_9

    if-eqz v4, :cond_9

    .line 405
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-eq v3, v8, :cond_9

    .line 406
    iget-boolean v3, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_isMop:Z

    if-eqz v3, :cond_6

    .line 407
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v8, "Add_BOOKMARK"

    invoke-virtual {v3, v6, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_6
    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v14

    .line 411
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v13

    .line 413
    iget-object v3, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 416
    invoke-interface {v3, v14}, Lcom/amazon/android/docviewer/IDocumentPage;->getPageState(I)[B

    move-result-object v2

    goto :goto_2

    :cond_7
    new-array v2, v2, [B

    :goto_2
    move-object/from16 v16, v2

    const/16 v2, 0x14

    .line 423
    invoke-direct {v0, v14, v13, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookText(III)Ljava/lang/String;

    move-result-object v10

    .line 432
    new-instance v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move v12, v14

    invoke-direct/range {v9 .. v16}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    const/4 v3, 0x1

    .line 440
    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 441
    invoke-direct {v0, v3, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->reportInBookChromeBookmarkMetric(ZLjava/lang/String;)V

    .line 442
    iget-object v1, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 443
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 447
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 449
    iget-object v2, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_context:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/krl/R$string;->adding_bookmark:I

    .line 450
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 449
    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 551
    instance-of v0, p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 556
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationOnCurrentPageUpdateEvent(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    .line 557
    sget-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 559
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addAnnotation(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;)Z

    :goto_0
    return-void
.end method

.method public updateGraphicalHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 1230
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    .line 1231
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 1232
    invoke-direct {p0, p2, v0, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->addGraphicalHighlightImpl(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public updateLastPageRead()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageState(I)[B

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead(I[B)V

    return-void
.end method

.method public updateLastPageRead(I)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageState(I)[B

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead(I[B)V

    return-void
.end method

.method public updateLastPageRead(I[B)V
    .locals 6

    .line 308
    iget v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->nextForcedLprPosition:I

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    .line 312
    iput v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->nextForcedLprPosition:I

    move p1, v0

    .line 315
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    const/4 v2, 0x1

    .line 320
    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v4, 0x0

    const-string v5, " new: "

    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {v3}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LPR persist - not updating LPR since is at default. old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 327
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LPR persist - updating LPR old: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v1

    if-ne v1, p1, :cond_2

    goto :goto_0

    .line 336
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->m_lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    .line 338
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->bookAnnotationsManager:Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->updateLpr(I[B)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    if-eqz v2, :cond_3

    .line 340
    sget-object p2, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    .line 342
    :cond_3
    sget-object p2, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->sendAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method

.method public writeAnnotations()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
