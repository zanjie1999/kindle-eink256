.class public Lcom/amazon/kindle/rendering/KRIFDocViewer;
.super Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.source "KRIFDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDoc;
.implements Lcom/amazon/kindle/yj/controller/IResourceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;
    }
.end annotation


# static fields
.field private static DISABLE_ANNOTATIONS:Z = false

.field private static final LINE_SPACING_LANGUAGES:[Ljava/lang/String;

.field private static final LINE_SPACING_OVERRIDES:[Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

.field private static final MIN_PERCENT:F = 0.1f

.field private static final SWITCH_READING_MODE_METRIC:Ljava/lang/String; = "SwitchReadingMode"

.field private static final TAG:Ljava/lang/String;

.field private static final ZOOM_FOR_MINIMUM_SIZE_RECT:F = 1.25f


# instance fields
.field private final POINT_ONE:Landroid/graphics/PointF;

.field private final POINT_ZERO:Landroid/graphics/PointF;

.field private activityPaused:Ljava/lang/Boolean;

.field private final attachedContainerIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backFromFootnoteMetricTracker:Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;

.field private bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

.field private cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

.field private contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

.field private debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

.field private debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

.field private hasIndexingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private highlightDecorationStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ignorenextSettingsUpdateForThumbnailManager:Z

.field private inBatchSettingChangeMode:Z

.field private isChromeShown:Ljava/lang/Boolean;

.field private m_annotations:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private m_deferUntilPostNavEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field

.field private m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

.field private m_ghlPositionFactory:Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

.field private m_krifBook:Lcom/amazon/krf/platform/KRFBook;

.field private m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

.field private m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/krf/platform/PageInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private m_readingModePositionsFactory:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

.field private m_searcher:Lcom/amazon/android/docviewer/KindleDocSearcher;

.field private m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

.field private m_tocTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/android/docviewer/IKindleTOC;",
            ">;"
        }
    .end annotation
.end field

.field protected m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

.field private margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field private pageLabelProvider:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

.field private pageLabelProviderForSearch:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

.field private scrollToPositionListener:Lcom/amazon/android/docviewer/IScrollToPositionListener;

.field private searchTOC:Lcom/amazon/android/docviewer/IKindleTOC;

.field private final supportsPDFThumbnailRenderer:Z

.field private ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

.field private toc:Lcom/amazon/android/docviewer/IKindleTOC;

.field private tocTaskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 190
    const-class v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v1, "ar"

    const-string v2, "ja"

    const-string v3, "hi"

    const-string v4, "mr"

    const-string v5, "gu"

    const-string v6, "ta"

    const-string v7, "ml"

    const-string v8, "zh-hant"

    const-string v9, "zh-tw"

    const-string v10, "zh-hk"

    const-string v11, "zh-mo"

    .line 196
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->LINE_SPACING_LANGUAGES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 200
    sput-boolean v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->DISABLE_ANNOTATIONS:Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    .line 2257
    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const v3, 0x3fad1eb8    # 1.3525f

    sget-object v4, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v3, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const v3, 0x3fc147ae    # 1.51f

    sget-object v4, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v3, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const v3, 0x3fd147ae    # 1.635f

    sget-object v4, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v2, v3, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->LINE_SPACING_OVERRIDES:[Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 7

    .line 264
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 205
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ZERO:Landroid/graphics/PointF;

    .line 206
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ONE:Landroid/graphics/PointF;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->tocTaskLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->highlightDecorationStyles:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 241
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 237
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->hasIndexingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->activityPaused:Ljava/lang/Boolean;

    .line 242
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isChromeShown:Ljava/lang/Boolean;

    .line 249
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->backFromFootnoteMetricTracker:Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_deferUntilPostNavEvents:Ljava/util/Queue;

    .line 259
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1020
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ignorenextSettingsUpdateForThumbnailManager:Z

    const-string v0, "KRIFDocViewer<init>"

    const/4 v2, 0x1

    .line 265
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 266
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    .line 268
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->onReadingModeChange(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    .line 269
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->backFromFootnoteMetricTracker:Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    .line 273
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 272
    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v3

    .line 281
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v4, v3}, Lcom/amazon/krf/platform/KRFBook;->setCachePath(Ljava/lang/String;)V

    const-string v3, "KRIFDocViewer<init> - create annotation manager"

    .line 283
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 284
    new-instance v4, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    new-instance v5, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;

    invoke-direct {v5, p0}, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 285
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object v6

    invoke-direct {v4, p0, p1, v5, v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)V

    iput-object v4, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 286
    invoke-static {v3, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v3, "KRIFDocViewer<init> - create selection model"

    .line 288
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 289
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 290
    invoke-static {v3, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v3, "KRIFDocViewer<init> - initialize seekbar"

    .line 291
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 292
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->initializeSeekbarVersion2IfApplicable()V

    .line 293
    invoke-static {v3, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->addDocViewerEventHandlers()V

    .line 296
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isGenericFixedFormat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPDFThumbnailRenderer:Z

    .line 298
    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookImageRenderer(ZZ)Lcom/amazon/kindle/rendering/IBookImageRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

    .line 300
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;

    invoke-direct {v3, p0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFBook;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 318
    new-instance p1, Lcom/amazon/android/docviewer/BookDocSearcher;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/BookDocSearcher;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_searcher:Lcom/amazon/android/docviewer/KindleDocSearcher;

    .line 319
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setOpenedBook(Lcom/amazon/kindle/model/content/ILocalBookItemDocument;)V

    const-string p1, "KRIFDocViewer - setup contentAvailabilityController"

    .line 321
    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 322
    new-instance p2, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p2, p0, v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;-><init>(Lcom/amazon/kindle/yj/controller/IResourceHost;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    .line 323
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p2

    int-to-long v3, p2

    .line 324
    invoke-virtual {p0, v3, v4}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setFirstLandingPosition(J)V

    const/4 v5, -0x1

    if-eq p2, v5, :cond_2

    .line 327
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {p2, v3, v4}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_3

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_2

    .line 334
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 336
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {v3, p2}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->init(Ljava/util/List;)V

    .line 337
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 339
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 340
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string p1, "KRIFDocViewer - setup ticr"

    .line 342
    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 343
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->supportsTicr(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 344
    new-instance p2, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    new-instance v2, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;

    invoke-direct {v2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;-><init>()V

    invoke-direct {p2, v2}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    .line 347
    :cond_4
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 350
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPageLabelProvider()V

    .line 353
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p2

    if-nez p2, :cond_5

    .line 357
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setLanguage(Ljava/lang/String;)V

    .line 360
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setHasEmbeddedFonts(Z)V

    .line 362
    invoke-static {p0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 363
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 364
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p2, v2, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    :cond_6
    if-eqz p1, :cond_8

    .line 370
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, "FORCE_KUX"

    .line 372
    invoke-interface {p1, p2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_3

    :cond_7
    const-string p1, "0"

    :goto_3
    const-string p2, "krf.force_kux"

    .line 373
    invoke-static {p2, p1}, Lcom/amazon/krf/platform/KRF;->setGlobalVariable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    :cond_8
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 189
    sget-boolean v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->DISABLE_ANNOTATIONS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->switchReadingModeIfRequired(Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->updateThumbnailManagerSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/rendering/KRIFDocViewer;Z)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/rendering/IBookImageRenderer;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method private attemptCreateTOC()V
    .locals 3

    .line 2719
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->tocTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2720
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    .line 2721
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createTocTask()Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    .line 2723
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkForMissingContent(J)Z
    .locals 7

    const/4 v0, 0x1

    const-string v1, "KRIFDocViewer.onKRIFPageChangeEvent - checking for missing content"

    .line 1089
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1090
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v2, p1, p2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1092
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1093
    sget-object v4, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing Containers : container size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "page:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {v4, v2}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->areAllAssetsAttached(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {v4, v2}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->prioritizeAssetDownloads(Ljava/util/List;)V

    .line 1107
    new-instance v4, Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    iget-object v5, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;-><init>(Ljava/util/List;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 1108
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1109
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->reportOneTapProgressiveDownloadMetrics(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1112
    :goto_0
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v0
.end method

.method private closeBookImageRenderer()V
    .locals 2

    .line 847
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPDFThumbnailRenderer:Z

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

    invoke-interface {v0}, Lcom/amazon/kindle/rendering/IBookImageRenderer;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 851
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private createPageLabelProvider()V
    .locals 5

    .line 1251
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "KRFBook.createPageInfoProvider()"

    .line 1252
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1253
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1254
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v1, "KRIFDocViewer - setup page label provider"

    .line 1256
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1257
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p0, v3}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProvider:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    .line 1259
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProvider:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V

    .line 1262
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1263
    new-instance v3, Lcom/amazon/kindle/rendering/KRIFDocViewer$4;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$4;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1270
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private declared-synchronized createTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 5

    monitor-enter p0

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v0, :cond_2

    const-string v0, "KRIFDocViewer.createTOCIfNeeded"

    const/4 v1, 0x1

    .line 1213
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v0, "KRFBook.getNavigationControl"

    .line 1214
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1215
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;

    move-result-object v0

    const-string v1, "KRFBook.getNavigationControl"

    const/4 v2, 0x0

    .line 1216
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1217
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1218
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    .line 1220
    :goto_1
    new-instance v4, Lcom/amazon/kindle/rendering/KRIFToc;

    invoke-direct {v4, v0, v3, v1}, Lcom/amazon/kindle/rendering/KRIFToc;-><init>(Lcom/amazon/krf/platform/NavigationControl;Lcom/amazon/krf/platform/Navigable;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    iput-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    const-string v0, "KRIFDocViewer.createTOCIfNeeded"

    .line 1221
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->toc:Lcom/amazon/android/docviewer/IKindleTOC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createTocTask()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/amazon/android/docviewer/IKindleTOC;",
            ">;"
        }
    .end annotation

    .line 1185
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    return-object v0
.end method

.method private deferEventUntilPostNavigation(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 1

    .line 3528
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_deferUntilPostNavEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private disposePageInfoProvider()V
    .locals 2

    .line 3159
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-eqz v0, :cond_0

    .line 3161
    invoke-interface {v0}, Lcom/amazon/krf/platform/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V
    .locals 2

    .line 3134
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->PRE_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 3135
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;)V
    .locals 1

    .line 3144
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 3145
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private getBookImageRenderer(ZZ)Lcom/amazon/kindle/rendering/IBookImageRenderer;
    .locals 0

    if-eqz p1, :cond_0

    .line 383
    new-instance p1, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;

    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;-><init>(Lcom/amazon/krf/platform/KRFBook;)V

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 385
    new-instance p1, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;

    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p1, p0, p2}, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFBook;)V

    return-object p1

    .line 387
    :cond_1
    new-instance p1, Lcom/amazon/kindle/rendering/NopBookImageRenderer;

    invoke-direct {p1}, Lcom/amazon/kindle/rendering/NopBookImageRenderer;-><init>()V

    return-object p1
.end method

.method private getDefaultReadingModeBasedOnScreenSize(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 0

    .line 3539
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->isMagazine()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3540
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3541
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->FIXED:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object p1

    .line 3543
    :cond_0
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object p1

    .line 3545
    :cond_1
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    return-object p1
.end method

.method private getGraphicDimensionsForRange(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)Landroid/graphics/Rect;
    .locals 4

    .line 2884
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 2885
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    mul-int v0, p4, p5

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2890
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    if-nez v0, :cond_1

    .line 2897
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_1
    const-string v2, "KRIFDocViewer - PageInfoProvider.getPageRectAt"

    const/4 v3, 0x1

    .line 2901
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2907
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageRectAt(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 2908
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_2

    .line 2909
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageRectangleFromViewSetting()Landroid/graphics/Rect;

    move-result-object p1

    .line 2911
    :cond_2
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2913
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2914
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, p4

    div-float/2addr p2, v0

    int-to-float p3, p5

    div-float/2addr p3, p1

    .line 2917
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float v0, v0, p2

    mul-float p1, p1, p2

    .line 2925
    new-instance p2, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p2, v1, v1, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;
    .locals 1

    .line 3573
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    if-nez v0, :cond_0

    .line 3574
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 3576
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    return-object v0
.end method

.method private getPageRectangleFromViewSetting()Landroid/graphics/Rect;
    .locals 4

    .line 2935
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2937
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result v0

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 2939
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getPartialGraphicDimensionsForRange(IIF)Landroid/graphics/Rect;
    .locals 4

    .line 2944
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2946
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    :try_start_0
    const-string v2, "KRIFDocViewer - PageInfoProvider.getPageRectAt"

    const/4 v3, 0x1

    .line 2951
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2952
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageRectAt(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 2953
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2955
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 2956
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    mul-float v0, v0, p2

    mul-float p1, p1, p2

    .line 2962
    new-instance p2, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 2964
    :catch_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private getPortraitScreenRect()Landroid/graphics/Rect;
    .locals 4

    .line 2999
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 3000
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3001
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3002
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3003
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3006
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getPortraitSizeForGraphic(ILandroid/graphics/PointF;Landroid/graphics/PointF;IF)Landroid/graphics/Rect;
    .locals 7

    .line 2971
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPortraitScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2974
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ZERO:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ONE:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2975
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    move v2, p1

    .line 2974
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGraphicDimensionsForRange(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 2977
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2978
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 2980
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v0

    .line 2981
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    cmpl-float v2, v1, p2

    if-gtz v2, :cond_1

    :cond_0
    const v2, 0x3e4ccccd    # 0.2f

    add-float v3, v0, p2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    div-float p2, v1, p2

    div-float/2addr v1, v0

    .line 2989
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3fa00000    # 1.25f

    :goto_0
    int-to-float p4, p4

    div-float/2addr p4, p3

    .line 2992
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 2994
    new-instance p4, Landroid/graphics/Rect;

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p4, p2, p2, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4
.end method

.method private getReadingModePositionsFactory()Lcom/amazon/kindle/util/ReadingModePositionsFactory;
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_readingModePositionsFactory:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    if-nez v0, :cond_0

    .line 1630
    new-instance v0, Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;-><init>(Lcom/amazon/krf/platform/KRFBook;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_readingModePositionsFactory:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_readingModePositionsFactory:Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    return-object v0
.end method

.method private getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 4

    .line 1154
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const-string v2, "KRIFDocViewer.getTOC"

    .line 1159
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1162
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attemptCreateTOC()V

    .line 1164
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 1167
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IKindleTOC;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1175
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "ExecutionException when getting TOC"

    invoke-static {v0, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1172
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "InterruptedException when getting TOC"

    invoke-static {v0, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :catch_2
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1179
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static needLineSpaceOverride(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2269
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->LINE_SPACING_LANGUAGES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2270
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private populateSupportedFeatures()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getCapabilities()Lcom/amazon/krf/platform/KRFCapabilities;

    move-result-object v0

    .line 708
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 710
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFCapabilities;->canChangeFontFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 712
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    :cond_0
    return-void
.end method

.method private refreshLineSpacing()V
    .locals 1

    .line 2318
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v0

    .line 2319
    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V

    return-void
.end method

.method private renderWithRetry(Ljava/util/concurrent/Callable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 3087
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPDFThumbnailRenderer:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3088
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image rendering is not supported for document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 3089
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3092
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    .line 3094
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    .line 3096
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;->getMissingContainerIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prioritizing container. containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3098
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->prioritizeMissingContent(Ljava/lang/String;)V

    goto :goto_1

    .line 3101
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3102
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;->getMissingContainerIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3103
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 3105
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 3112
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v1, "Exception thrown while rendering"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3110
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private reportOneTapProgressiveDownloadMetrics(J)V
    .locals 8

    .line 1127
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-nez v0, :cond_0

    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getFirstLandingPosition()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    cmp-long v5, v0, p1

    if-eqz v5, :cond_1

    .line 1131
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getFirstLandingPosition()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, p1, v0

    if-nez v5, :cond_2

    .line 1132
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 1133
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    new-array v0, v4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v0, v2

    const-string v1, "oneTapProgressiveDownloadViewShown"

    .line 1132
    invoke-virtual {p1, v1, p2, v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 1138
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 1139
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    new-array v0, v4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v0, v2

    const-string v1, "oneTapProgressiveDownloadViewOccurrence"

    .line 1138
    invoke-virtual {p1, v1, p2, v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method private resizeView(I)V
    .locals 5

    .line 2492
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2493
    sget-object p1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    .line 2494
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 2511
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getWindowSizeWithoutCornerNotch(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 2513
    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 2514
    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 2520
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v3}, Lcom/amazon/kindle/rendering/KRIFView;->getPlatformView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v3

    sget-object v4, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v3, v1, v4}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    .line 2522
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setDimensions(II)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2523
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ignorenextSettingsUpdateForThumbnailManager:Z

    .line 2524
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->updateThumbnailManagerSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private sendDeferredEventsOnPostNavigation()V
    .locals 2

    .line 3532
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_deferUntilPostNavEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3533
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_deferUntilPostNavEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/events/IEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOrientationInternal(IZ)V
    .locals 1

    .line 2464
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_2

    .line 2465
    iget v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientation:I

    if-eq v0, p1, :cond_2

    .line 2466
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->logOrientationChange(I)V

    const/4 v0, 0x1

    .line 2468
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    .line 2471
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2474
    sget-object p2, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->ORIENTATION:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2479
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->resizeView(I)V

    .line 2481
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setOrientation(I)V

    :cond_2
    return-void
.end method

.method private startDelayedSearchIndexThread()V
    .locals 2

    .line 3152
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->hasIndexingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->hasIndexingStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createDelayedSearchIndexThread()V

    :cond_0
    return-void
.end method

.method private switchReadingModeIfRequired(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 1794
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1796
    :goto_0
    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->REFLOWABLE:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eq v0, v1, :cond_1

    .line 1797
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/KRFBook;->getReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object p1

    if-eq v0, p1, :cond_1

    .line 1799
    invoke-static {p1}, Lcom/amazon/kindle/util/ReadingModeUtil;->fromKRFReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    :cond_1
    return-void
.end method

.method private updateLastPageRead()V
    .locals 1

    .line 1010
    invoke-static {p0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isChromeShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead()V

    return-void
.end method

.method private updateThumbnailManagerSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 3

    const-string v0, "KRIFDocViewer.updateThumbnailManagerSettings()"

    const/4 v1, 0x1

    .line 1052
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1053
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    if-eqz v2, :cond_0

    .line 1055
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->updateSettings(Lcom/amazon/krf/platform/ViewSettings;)V

    :cond_0
    const/4 p1, 0x0

    .line 1060
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateWayPointsForTargetReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Z
    .locals 2

    .line 1743
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModePositionsFactory()Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    move-result-object v1

    .line 1746
    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->convertWayPointsForTargetReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;)Ljava/util/List;

    move-result-object p1

    .line 1747
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->setWaypoints(Ljava/util/List;Landroid/content/Context;)V

    .line 1748
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 1750
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModePositionsFactory()Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->isViewNavigationRefreshRequired()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 2745
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object p3

    .line 2746
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne p2, v0, :cond_0

    goto/16 :goto_3

    .line 2754
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2755
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 2756
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2757
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v2, " - "

    .line 2760
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2763
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2764
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, p2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 2767
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 2768
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getFooters()Ljava/util/List;

    move-result-object v2

    .line 2769
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 2774
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/ui/IKRXFooter;

    .line 2775
    invoke-interface {v4}, Lcom/amazon/kindle/krx/ui/IKRXFooter;->getFooterText()Ljava/lang/String;

    move-result-object v4

    .line 2776
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2777
    new-instance p2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    move-object p1, v0

    :cond_7
    :goto_3
    return-object p1
.end method

.method public addHighlightDecorationStyle(Ljava/lang/String;Lcom/amazon/krf/platform/ContentDecorationStyle;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->highlightDecorationStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyContentDecorationSettings()V
    .locals 2

    .line 2421
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2423
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setContentDecorationSettings(Ljava/util/Collection;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2424
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    :cond_0
    return-void
.end method

.method public applySettingsImmediately()Z
    .locals 2

    .line 3565
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    if-eqz v0, :cond_0

    .line 3566
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    move-result v0

    const/4 v1, 0x0

    .line 3567
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2430
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching resource container - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2434
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/KRFBook;->attachContainer(Ljava/io/File;)Z

    .line 2436
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPDFThumbnailRenderer:Z

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    monitor-enter v0

    .line 2438
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2439
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attachedContainerIds:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2440
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2443
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public checkAndEnableAccessibilityPageTurnSupport()V
    .locals 2

    .line 3517
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/KRIFUtils;->shouldEnableAccessibilityPageTurnSupport(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3518
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->enableKrfAccessibilityPageTurnSupport()V

    :cond_0
    return-void
.end method

.method public closeComponentViewer()V
    .locals 1

    .line 3512
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->closeComponentViewer()V

    return-void
.end method

.method public closeDocument()V
    .locals 6

    .line 765
    monitor-enter p0

    .line 766
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    monitor-exit p0

    return-void

    .line 770
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->closeDocument()V

    .line 771
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 772
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->backFromFootnoteMetricTracker:Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->closeThumbnailManager()V

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 782
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->closeKRFView()V

    .line 784
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 787
    :cond_1
    monitor-enter p0

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->destroy()V

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/KRFBook;->setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V

    .line 793
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/KRFBook;->setContentDecorationDataProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 796
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    .line 797
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->onBookClose()V

    .line 799
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_ghlPositionFactory:Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    .line 801
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 803
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 805
    :try_start_3
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while canceling loading TOC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    .line 810
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_annotations:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 812
    :try_start_4
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_annotations:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 814
    :try_start_5
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while canceling m_annotations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProvider:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    .line 820
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->disposePageInfoProvider()V

    .line 821
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->closeBookImageRenderer()V

    .line 823
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->dispose()V

    .line 824
    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 825
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->release()V

    .line 826
    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 827
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 775
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public closeThumbnailManager()V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->dispose()V

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    :cond_0
    return-void
.end method

.method public contentDecorationToAnnotation(Lcom/amazon/krf/platform/ContentDecoration;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 13

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 591
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getStyle()Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v3

    .line 597
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->highlightDecorationStyles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 598
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/krf/platform/ContentDecorationStyle;

    invoke-virtual {v8}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 599
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "styleKey "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 604
    :cond_1
    invoke-static {v6}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, ":"

    .line 606
    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 607
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    const/4 v6, 0x2

    .line 608
    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 612
    :goto_1
    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    long-to-int v7, v6

    .line 613
    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v8

    long-to-int v6, v8

    .line 615
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p1

    sget-object v8, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x1

    if-ne p1, v8, :cond_3

    .line 616
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {p1, v9, v7, v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 618
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 619
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_3
    const/4 p1, 0x7

    if-ne v3, p1, :cond_5

    .line 622
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {p1, v3, v7, v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 623
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 624
    invoke-interface {v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getLongPosition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    invoke-interface {v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getLongPosition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 626
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-le v3, v9, :cond_9

    .line 630
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {p1, v3, v7, v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 632
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_9

    .line 635
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 636
    invoke-interface {v6}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v10

    cmp-long v12, v7, v10

    if-nez v12, :cond_7

    invoke-interface {v6}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    int-to-long v7, v7

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v10

    cmp-long v12, v7, v10

    if-nez v12, :cond_7

    .line 637
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 641
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 642
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v9, :cond_a

    .line 647
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object p1

    .line 649
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v9, :cond_b

    .line 654
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object p1

    :cond_b
    return-object v5
.end method

.method public createContentDecorationStyle(II)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 6

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 3055
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method public createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 6

    .line 3070
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3074
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/krf/platform/KRFBook;->createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method public createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 1

    .line 3078
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3082
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method public createDocView(Landroid/content/Context;)V
    .locals 5

    .line 726
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "KRIFDocViewer.createDocView()"

    .line 732
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 733
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {v1, v3, p1, p0}, Lcom/amazon/kindle/rendering/KRIFView;-><init>(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 736
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->sendBufferedNavigationEvents()V

    .line 740
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    sget-object v3, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 742
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    check-cast v1, Lcom/amazon/krf/platform/SelectionChangeListener;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    .line 743
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NORMAL:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/renderingmodule/R$color;->selection_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;I)V

    .line 744
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->populateSupportedFeatures()V

    .line 745
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    new-instance v1, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-direct {v1, v3}, Lcom/amazon/kindle/listeners/KRIFContentMissingListener;-><init>(Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;)V

    invoke-interface {p1, v1}, Lcom/amazon/krf/platform/KRFBook;->setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V

    .line 747
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->loadAnnotations()V

    .line 752
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 754
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    if-eq v0, p1, :cond_2

    .line 758
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    :cond_2
    const/4 p1, 0x0

    .line 761
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public createGraphicalHighlightStyle(IFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 1

    .line 3031
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3035
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFBook;->createGraphicalHighlightStyle(IFF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method protected createObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 3507
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    return-object v0
.end method

.method public createPositionObject(I)Lcom/amazon/krf/platform/Position;
    .locals 3

    .line 2558
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 2559
    invoke-interface {v0, v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createPositionObject(ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;
    .locals 2

    .line 2615
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2619
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 2620
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1, v0, p1, p2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Lcom/amazon/krf/platform/PageInfoProvider;ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public createPositionObject(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2580
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    if-eqz v0, :cond_1

    .line 2581
    check-cast p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    .line 2583
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    .line 2584
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2585
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    .line 2587
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 2601
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    .line 2602
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 693
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFTextPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object p1

    .line 690
    :cond_0
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/kindle/rendering/KRIFGeometricPositionRange;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-object p1
.end method

.method public createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 683
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    return-object p1
.end method

.method createThumbnailManager(Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 2

    .line 3473
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3477
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3483
    :cond_1
    new-instance v1, Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->getPlatformView()Lcom/amazon/krf/platform/KRFView;

    move-result-object p1

    invoke-direct {v1, p1, v0, p0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;-><init>(Lcom/amazon/krf/platform/KRFView;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    .line 3485
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;-><init>(Lcom/amazon/kindle/nln/IThumbnailManager;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public createUnderlineStyle(IF)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 1

    .line 3040
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/KRFBook;->createUnderlineStyle(IF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 2

    monitor-enter p0

    .line 2532
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    .line 2533
    new-instance v0, Lcom/amazon/kindle/search/KRIFWordIterator;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/search/KRIFWordIterator;-><init>(Lcom/amazon/krf/platform/KRFBook;)V

    .line 2534
    invoke-virtual {v0}, Lcom/amazon/kindle/search/KRIFWordIterator;->first()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2537
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 699
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/rendering/KRIFView;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public debugApplySettings()V
    .locals 4

    .line 3449
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 3450
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3451
    sget-object v3, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFView;->applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z

    .line 3452
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3454
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_1

    .line 3455
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v3, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v1, v0, v3}, Lcom/amazon/kindle/rendering/KRIFView;->applySettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)Z

    .line 3456
    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    :cond_1
    return-void
.end method

.method public debugGetBackgroundColor()I
    .locals 1

    .line 3217
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 3218
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3220
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getBackgroundColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public debugGetFontSize()I
    .locals 1

    .line 3248
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getFontSize()I

    move-result v0

    return v0
.end method

.method public debugGetLineSpacing()I
    .locals 1

    .line 3274
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getLineSpacing()I

    move-result v0

    return v0
.end method

.method public debugGetMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 5

    .line 3300
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3301
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3303
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v2

    float-to-int v2, v2

    .line 3304
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getTopMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v3

    float-to-int v3, v3

    .line 3305
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v4

    float-to-int v4, v4

    .line 3306
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v1

    float-to-int v1, v1

    .line 3308
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3309
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3310
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3311
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-object v0
.end method

.method public debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I
    .locals 3

    .line 3419
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3422
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 3439
    :pswitch_0
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getShowFullPageOnExit()Z

    move-result p1

    return p1

    .line 3437
    :pswitch_1
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getShowFullPageOnEnter()Z

    move-result p1

    return p1

    .line 3435
    :pswitch_2
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isAutomaticColumnModeEnabled()Z

    move-result p1

    return p1

    .line 3428
    :pswitch_3
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3432
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getSectionLayoutMode()Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    move-result-object p1

    .line 3433
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 3426
    :pswitch_4
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getPanelTransitionDuration()I

    move-result p1

    return p1

    .line 3424
    :pswitch_5
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getMaskColor()I

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public debugGetTextColor()I
    .locals 1

    .line 3186
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 3187
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3189
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public debugSetBackgroundColor(I)V
    .locals 2

    .line 3228
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 3229
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 3230
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3232
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_1

    .line 3233
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3236
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_2

    .line 3237
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBackgroundColor(I)V

    .line 3240
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_3

    .line 3241
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public debugSetFontSize(I)V
    .locals 2

    .line 3253
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 3254
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 3255
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_1

    .line 3258
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3260
    :cond_1
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3262
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_2

    .line 3263
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 3266
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_3

    .line 3267
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_3
    return-void
.end method

.method public debugSetLineSpacing(I)V
    .locals 2

    .line 3279
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 3280
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 3281
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_1

    .line 3284
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3286
    :cond_1
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3288
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_2

    .line 3289
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 3292
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_3

    .line 3293
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_3
    return-void
.end method

.method public debugSetMargins(IIII)V
    .locals 3

    .line 3318
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 3320
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3321
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_0

    .line 3322
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3324
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    goto :goto_0

    .line 3326
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_2

    .line 3327
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3329
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    :goto_0
    if-eqz v0, :cond_3

    .line 3333
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, p1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3334
    new-instance p1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p2, p2

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p1, p2, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3335
    new-instance p2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p3, p3

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p2, p3, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3336
    new-instance p3, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p4, p4

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {p3, p4, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 3338
    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 3339
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 3340
    invoke-virtual {v0, p2}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 3341
    invoke-virtual {v0, p3}, Lcom/amazon/krf/platform/ViewSettings;->setBottomMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_3
    return-void
.end method

.method public debugSetMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3

    .line 3348
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugSetMargins(IIII)V

    return-void
.end method

.method public debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V
    .locals 3

    .line 3353
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_0

    return-void

    .line 3357
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_1

    .line 3358
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3360
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_2

    .line 3361
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3364
    :cond_2
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 3405
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 3406
    :goto_0
    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnExit(Z)V

    .line 3408
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_f

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 3409
    :goto_1
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnExit(Z)V

    goto :goto_7

    .line 3397
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 3398
    :goto_2
    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnEnter(Z)V

    .line 3400
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_f

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 3401
    :goto_3
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setShowFullPageOnEnter(Z)V

    goto :goto_7

    .line 3389
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 3390
    :goto_4
    invoke-virtual {p1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    .line 3392
    :cond_a
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_f

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 3393
    :goto_5
    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setAutomaticColumnModeEnabled(Z)V

    goto :goto_7

    :pswitch_3
    if-nez p2, :cond_c

    .line 3382
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    goto :goto_6

    :cond_c
    sget-object p1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    .line 3384
    :goto_6
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p2, :cond_f

    .line 3385
    invoke-virtual {p2, p1}, Lcom/amazon/krf/platform/ViewSettings;->setSectionLayoutMode(Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;)V

    goto :goto_7

    .line 3374
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_d

    .line 3375
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setPanelTransitionDuration(I)V

    .line 3377
    :cond_d
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_f

    .line 3378
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setPanelTransitionDuration(I)V

    goto :goto_7

    .line 3366
    :pswitch_5
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_e

    .line 3367
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setMaskColor(I)V

    .line 3369
    :cond_e
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz p1, :cond_f

    .line 3370
    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setMaskColor(I)V

    :cond_f
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public debugSetTextColor(I)V
    .locals 2

    .line 3197
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 3198
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    .line 3199
    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    .line 3201
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-nez v0, :cond_1

    .line 3202
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsPortrait:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_2

    .line 3206
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTextColor(I)V

    .line 3209
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->debugViewSettingsLandscape:Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_3

    .line 3210
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public enablePageCurl(Z)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2025
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->enablePageCurl(Z)V

    :cond_0
    return-void
.end method

.method extractPointFromKRFPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;
    .locals 1

    .line 2632
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2636
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->extractPointFromPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getBeginningPosition()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    return v0
.end method

.method public getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 489
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v0
.end method

.method public getBookEndPosition()I
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    return v0
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getBookPositionBase()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->blackColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0

    .line 2122
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 2109
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->blackColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0

    .line 2113
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    return-object v0
.end method

.method public getContentDecorationForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/krf/platform/ContentDecorationStyle;)Lcom/amazon/krf/platform/ContentDecoration;
    .locals 5

    .line 661
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 669
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 672
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 676
    new-instance v1, Lcom/amazon/krf/platform/ContentDecoration;

    new-instance v2, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v2, v0, p1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    invoke-direct {v1, v2, p2}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getContentViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getPlatformView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getContinuousScrollEnabled()Z
    .locals 3

    .line 1837
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1843
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1847
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1853
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFontFace()Ljava/lang/String;
    .locals 1

    .line 2353
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    return-object v0
.end method

.method public getDocument()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 0

    return-object p0
.end method

.method public getElementsOnCurrentPage(I)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->getElementsOnCurrentPage(I)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFontSize()I
    .locals 1

    .line 2031
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2033
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getFontSize()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
    .locals 2

    .line 2728
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    if-nez v0, :cond_0

    .line 2729
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    .line 2732
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    return-object v0
.end method

.method public bridge synthetic getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGHLPositionFactory()Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getGHLPositionFactory()Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;
    .locals 2

    monitor-enter p0

    .line 3024
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_ghlPositionFactory:Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3025
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_ghlPositionFactory:Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_ghlPositionFactory:Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGotoTextWatcher()Landroid/text/TextWatcher;
    .locals 3

    .line 1397
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPageLabels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->userLocationFromPosition(I)I

    move-result v0

    .line 1399
    new-instance v1, Lcom/amazon/kcp/reader/GotoTextWatcher;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/GotoTextWatcher;-><init>(I)V

    return-object v1

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1403
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->hasOnlyNumericPageLabels()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1411
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1412
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->userLocationFromPosition(I)I

    move-result v1

    .line 1413
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1416
    :cond_1
    new-instance v1, Lcom/amazon/kcp/reader/GotoTextWatcher;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/GotoTextWatcher;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 1418
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t parse numeric max page label"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1423
    :cond_2
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$5;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    return-object v0
.end method

.method public getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 6

    .line 1550
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1554
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 1557
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 1558
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ZERO:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ONE:Landroid/graphics/PointF;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGraphicDimensionsForRange(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicDimensionsForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 8

    .line 1493
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    .line 1494
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGHLPositionFactory()Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1502
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    .line 1503
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1507
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1508
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v2, p0

    move v6, p3

    move v7, p4

    .line 1509
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGraphicDimensionsForRange(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 1504
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start and end positions are not on the same page"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1499
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1588
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1594
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    .line 1595
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;III)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->renderWithRetry(Ljava/util/concurrent/Callable;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1538
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1539
    new-instance p3, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-direct {p0, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->renderWithRetry(Ljava/util/concurrent/Callable;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getHighlightDecorationStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->highlightDecorationStyles:Ljava/util/Map;

    return-object v0
.end method

.method public getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;
    .locals 4

    .line 1379
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBook;->createImageForResourceName(Ljava/lang/String;)Lcom/amazon/krf/media/EncodedImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {v0}, Lcom/amazon/krf/media/EncodedImage;->getImageData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1387
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1388
    new-instance v1, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;

    invoke-direct {v1, p1, v0}, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v1
.end method

.method public getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    .line 3168
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 3169
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->getLineSettingsForCurrentOrientation()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLineSpacing()I
    .locals 1

    .line 2324
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2326
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2329
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLineSpacing()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 2200
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object v0
.end method

.method public getMonospaceFontFace()Ljava/lang/String;
    .locals 1

    .line 2381
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2384
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2386
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getDefaultMonospaceFontFace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigatingToSearchResultFlag()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    return v0
.end method

.method public getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumWordsBetweenPositions(III)I
    .locals 2

    .line 1472
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1474
    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 1475
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    if-eqz p1, :cond_1

    .line 1477
    iget p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-gt p1, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1479
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v1, p3, :cond_0

    goto :goto_1

    .line 1482
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    goto :goto_0

    .line 1485
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    :cond_2
    return v1
.end method

.method public getPageEndPosition()I
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getCurrentPageEndPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getCurrentPageEndPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v1

    .line 468
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProvider:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    return-object v0
.end method

.method public bridge synthetic getPageLabelProviderForSearch()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProviderForSearch()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPageLabelProviderForSearch()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;
    .locals 3

    .line 1277
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProviderForSearch:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    if-nez v0, :cond_0

    .line 1279
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1280
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-interface {v1, v2}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1281
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProviderForSearch:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->pageLabelProviderForSearch:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPagePortraitSize(Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 6

    .line 1575
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1579
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 1581
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v1

    .line 1583
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ZERO:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->POINT_ONE:Landroid/graphics/PointF;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPortraitSizeForGraphic(ILandroid/graphics/PointF;Landroid/graphics/PointF;IF)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getPageStartPosition()I
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getCurrentPageStartPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getCurrentPageStartPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object v1

    .line 445
    :cond_0
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPageState(I)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1605
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/rendering/IBookImageRenderer;->getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    move-result-object p1

    return-object p1
.end method

.method public getPartialGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 1

    .line 1563
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1567
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 1569
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    .line 1570
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPartialGraphicDimensionsForRange(IIF)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 8

    .line 1516
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    .line 1517
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGHLPositionFactory()Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    .line 1526
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1530
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1531
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v2, p0

    move v6, p3

    move v7, p4

    .line 1533
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPortraitSizeForGraphic(ILandroid/graphics/PointF;Landroid/graphics/PointF;IF)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 1527
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start and end positions are not on the same page"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1522
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1767
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    .line 1768
    invoke-static {v0}, Lcom/amazon/kindle/util/ReadingModeUtil;->fromKRFReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v0

    return-object v0

    .line 1773
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModeFromLPR()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v0

    return-object v0
.end method

.method public getReadingModeFromLPR()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 4

    .line 1778
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 1782
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1, v0}, Lcom/amazon/krf/platform/KRFBook;->getReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    goto :goto_0

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDefaultReadingModeBasedOnScreenSize(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    .line 1786
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/util/ReadingModeUtil;->fromKRFReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v0

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 2788
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 2790
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2794
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReadingRulerEnabled()Z
    .locals 1

    .line 1913
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollToPositionListener()Lcom/amazon/android/docviewer/IScrollToPositionListener;
    .locals 2

    .line 3550
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->scrollToPositionListener:Lcom/amazon/android/docviewer/IScrollToPositionListener;

    if-nez v0, :cond_0

    .line 3551
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFDocViewer$1;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->scrollToPositionListener:Lcom/amazon/android/docviewer/IScrollToPositionListener;

    .line 3553
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->scrollToPositionListener:Lcom/amazon/android/docviewer/IScrollToPositionListener;

    return-object v0
.end method

.method public getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_searcher:Lcom/amazon/android/docviewer/KindleDocSearcher;

    return-object v0
.end method

.method public getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;
    .locals 2

    .line 1806
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1807
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 1811
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getSectionLayoutMode()Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    move-result-object v0

    .line 1812
    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0

    .line 1814
    :cond_1
    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1815
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0

    .line 1817
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getSpeechBreakersForCurrentPage()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
    .locals 2

    .line 892
    new-instance v0, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->getSpeechBreakers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/speech/breaker/KRIFSpeechBreakerList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getStartReadingPosition()I
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeSRL:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/KRFBookInfo;->getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting start reading position of: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1
.end method

.method public getTOC()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    .line 1150
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method

.method public getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 5

    .line 3590
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v2, "KRIFDocViewer.getTOCForReadingMode"

    .line 3591
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v3, "KRFBook.getNavigationControlForReadingMode"

    .line 3593
    invoke-static {v3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 3594
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;

    move-result-object v0

    const/4 v4, 0x0

    .line 3595
    invoke-static {v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 3597
    const-class v3, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-nez p1, :cond_0

    .line 3599
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "BookReadingMode value is not present in KRF\'s ViewSettings ReadingMode Enum"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 3604
    new-instance v3, Lcom/amazon/kindle/rendering/KRIFToc;

    invoke-direct {v3, v0, v1, p1}, Lcom/amazon/kindle/rendering/KRIFToc;-><init>(Lcom/amazon/krf/platform/NavigationControl;Lcom/amazon/krf/platform/Navigable;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    move-object v1, v3

    goto :goto_0

    .line 3606
    :cond_1
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "NavigationControl is unexpectedly found NULL"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    :goto_0
    invoke-static {v2, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_2
    return-object v1
.end method

.method public getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 4

    .line 1229
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;

    move-result-object v0

    .line 1231
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->searchTOC:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v2, :cond_0

    .line 1232
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFToc;

    sget-object v3, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFToc;-><init>(Lcom/amazon/krf/platform/NavigationControl;Lcom/amazon/krf/platform/Navigable;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public getTextBetweenPositions(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1448
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTextBetweenPositions(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBetweenPositions(III)Ljava/lang/String;
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/kcp/util/DocViewerUtils;->getTextBetweenPositions(IIILcom/amazon/kindle/search/IKindleWordTokenIterator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 1

    .line 3469
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    return-object v0
.end method

.method public getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
    .locals 1

    .line 2799
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    return-object v0
.end method

.method public getTransitionDuration()I
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1969
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getPanelTransitionDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCoverPage()Z
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->isCoverPageAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHierarchicalTOC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNoExistingLocalLpr()Z
    .locals 2

    .line 2663
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 1336
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1339
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateSearchResultFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    return-void
.end method

.method public isAccessibilityPageTurnSupportEnabled()Z
    .locals 1

    .line 3524
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->isKrfAccessibilityPageTurnSupportEnabled()Z

    move-result v0

    return v0
.end method

.method public isBackAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDoneWithInitialDraw()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKindleIllustratedSupported()Z
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    .line 2129
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isIllustrated()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1305
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->isNextPageAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->isPrevPageAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 5

    .line 2045
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2046
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2047
    :goto_0
    iget v1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 2048
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageEndPosition()I

    move-result v4

    if-gt v1, v4, :cond_2

    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 2049
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 2055
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isPromptworthyPosition(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z

    move-result p1

    return p1
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 5

    .line 2065
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2066
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2067
    :goto_0
    iget v1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 2068
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageEndPosition()I

    move-result v4

    if-gt v1, v4, :cond_2

    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    .line 2069
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 2075
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isPromptworthyPosition(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z

    move-result p1

    return p1
.end method

.method public isPromptworthyPosition(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z
    .locals 4

    .line 2079
    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookEndPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2080
    :goto_0
    iget p1, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method lineSpacingOptionsToMeasureValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;Lcom/amazon/android/docviewer/KindleDocLineSettings;)Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 2

    .line 2291
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2292
    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->needLineSpaceOverride(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->LINE_SPACING_OVERRIDES:[Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->serializationValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2300
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 2301
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 2302
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isJpVertContent()Z

    move-result v1

    .line 2303
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->serializationValue()I

    move-result p1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result p1

    .line 2304
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v0, p1, p2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    .line 2307
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Creating Measure Value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getUnit()Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public loadAnnotations()V
    .locals 2

    .line 2701
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_annotations:Ljava/util/concurrent/Future;

    return-void
.end method

.method public markBatchSettingsChange(Z)V
    .locals 0

    .line 3559
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    return-void
.end method

.method public navigateBack()V
    .locals 10

    .line 918
    new-instance v9, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    sget-object v3, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 919
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageEndPosition()I

    move-result v0

    int-to-long v7, v0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 920
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, v9}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 860
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPosition(I)V

    :cond_0
    return-void
.end method

.method public navigateToBeginning()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToBeginning()V

    :cond_0
    return-void
.end method

.method public navigateToCover()V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToCoverPage()V

    :cond_0
    return-void
.end method

.method public navigateToLocation(I)V
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 898
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToLocation(J)V

    :cond_0
    return-void
.end method

.method public navigateToNextPage()V
    .locals 1

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    .line 933
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz p1, :cond_0

    .line 934
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToNextPage()V

    :cond_0
    return-void
.end method

.method public navigateToPercent(D)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPercent(D)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 1

    .line 866
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->switchReadingModeIfRequired(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 867
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPosition(I)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(IZ)V
    .locals 1

    .line 874
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->switchReadingModeIfRequired(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 875
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPosition(IZ)V

    :cond_0
    return-void
.end method

.method public navigateToPositionFromSearch(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    .line 538
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public navigateToPrevPage()V
    .locals 1

    const/4 v0, 0x0

    .line 940
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    .line 946
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz p1, :cond_0

    .line 947
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->navigateToPreviousPage()V

    :cond_0
    return-void
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    if-ne v0, v1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->activityPaused:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 427
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->activityPaused:Ljava/lang/Boolean;

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    if-ne p1, v0, :cond_3

    .line 429
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->activityPaused:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 432
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->activityPaused:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    return-void
.end method

.method public onInitialDraw()V
    .locals 3

    .line 2668
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->onInitialDraw()V

    const-string v0, "KRIFDocViewer.onInitialDraw()"

    const/4 v1, 0x1

    .line 2670
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2671
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->reportBookOpenMetric()V

    .line 2674
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->showMessage(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;)V

    .line 2676
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->checkToDisplayMRPRPopUpOnInitialDraw()V

    .line 2681
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->syncOnInitialDraw()V

    .line 2683
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attemptCreateTOC()V

    .line 2685
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->startDelayedSearchIndexThread()V

    .line 2686
    new-instance v1, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 2687
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 v1, 0x0

    .line 2688
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKRIFCDListenerEvent(Lcom/amazon/kindle/events/KRIFCDOnClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 2712
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->isHighlight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->isGHL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2713
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_1
    return-void
.end method

.method public onKRIFNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 978
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POSITION_RANGE_CHANGED:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 980
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->updateLastPageRead()V

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 982
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->sendDeferredEventsOnPostNavigation()V

    .line 983
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->updateLastPageRead()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKRIFPageTransitionChangeEvent(Lcom/amazon/kindle/events/KRIFPostPageTransitionAnimationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageStartPosition()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->checkForMissingContent(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->attemptCreateTOC()V

    .line 1077
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->startDelayedSearchIndexThread()V

    .line 1082
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    if-eqz p1, :cond_1

    .line 1083
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->startOrLoadAccessiblePageSwipePlayer()V

    :cond_1
    return-void
.end method

.method public onKRIFSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        acceptSubTypes = true
        isBlocking = true
    .end annotation

    .line 1025
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 1026
    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1028
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ignorenextSettingsUpdateForThumbnailManager:Z

    if-nez p1, :cond_0

    .line 1029
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1030
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$2;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1037
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->ignorenextSettingsUpdateForThumbnailManager:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_2

    .line 996
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1004
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1001
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isChromeShown:Ljava/lang/Boolean;

    goto :goto_0

    .line 998
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isChromeShown:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    return-void
.end method

.method public onRenderComplete()V
    .locals 1

    .line 2693
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    if-eqz v0, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->logOrientationChangeComplete(I)V

    const/4 v0, 0x0

    .line 2695
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    :cond_0
    return-void
.end method

.method public openComponentViewer(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 3017
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 3018
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFView;->openComponentViewer(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_0
    return-void
.end method

.method protected pageLabelFromPosition(I)Ljava/lang/String;
    .locals 2

    .line 962
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasPageNumbers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 967
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageLabelFromPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prioritizeMissingContent(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1119
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->areAllAssetsAttached(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1122
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->contentAvailabilityController:Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->prioritizeAssetDownloads(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public recordStatisticsOnPostNavigation()V
    .locals 0

    return-void
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 1

    .line 2851
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2852
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    :cond_0
    return-void
.end method

.method public refreshDocView()V
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2823
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->refresh()V

    :cond_0
    return-void
.end method

.method public refreshFooter()V
    .locals 2

    .line 2876
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2877
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setRefreshRequired(Z)V

    .line 2878
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public refreshHeader()V
    .locals 1

    .line 2863
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2864
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public refreshSearchResult()V
    .locals 0

    .line 548
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->refreshSearchResults()V

    return-void
.end method

.method public refreshSearchResults()V
    .locals 1

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResults:Ljava/util/List;

    return-void
.end method

.method protected reportBookOpenMetric()V
    .locals 4

    .line 1755
    invoke-static {p0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "CONTENT_OPEN"

    const-string v3, "OpenContent:YJLRPERIODICALS_V2"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1759
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->reportBookOpenMetric()V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 2

    .line 2086
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2091
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 2093
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 2094
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2095
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2096
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setContentDecorationSettings(Ljava/util/Collection;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2097
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    new-instance v0, Lcom/amazon/kindle/event/ColorModeChangeEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 2100
    new-instance p1, Lcom/amazon/kindle/krx/events/ColorModeChangeEvent;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/events/ColorModeChangeEvent;-><init>()V

    .line 2101
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 2102
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public setColumnCount(IZ)V
    .locals 0

    .line 2398
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz p2, :cond_1

    .line 2401
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 2404
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object p2

    .line 2405
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setColumnCount(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2406
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_1

    .line 2407
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_1
    return-void
.end method

.method public setContinuousScrollEnabled(ZZ)V
    .locals 5

    .line 1861
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_3

    .line 1862
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->isVerticalScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1864
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v3, :cond_3

    if-eq p1, v0, :cond_3

    const-string v0, "KRIFDocViewer.setContinuousScrollEnabled()"

    .line 1867
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1871
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->closeThumbnailManager()V

    .line 1872
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->closeBookImageRenderer()V

    if-eqz p2, :cond_1

    .line 1877
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p2}, Lcom/amazon/kindle/rendering/KRIFView;->closeKRFView()V

    const/4 p2, 0x0

    .line 1878
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    .line 1879
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->cachedSettingControl:Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    goto :goto_1

    .line 1883
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/rendering/KRIFView;->reinitialize(Lcom/amazon/krf/platform/KRFBook;)Z

    .line 1887
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 1890
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p2, :cond_2

    .line 1891
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;

    sget-object v3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_UPDATED:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-interface {p2, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1894
    :cond_2
    iget-boolean p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->supportsPDFThumbnailRenderer:Z

    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookImageRenderer(ZZ)Lcom/amazon/kindle/rendering/IBookImageRenderer;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->bookImageRenderer:Lcom/amazon/kindle/rendering/IBookImageRenderer;

    .line 1899
    new-instance p2, Lcom/amazon/kindle/krx/events/ContinuousScrollChangedEvent;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/events/ContinuousScrollChangedEvent;-><init>(Z)V

    invoke-direct {p0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->deferEventUntilPostNavigation(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1904
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 1906
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public setDefaultFontFace(Ljava/lang/String;)Z
    .locals 1

    .line 2337
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 2338
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2339
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setDefaultFontFace(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2340
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2341
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->DEFAULT_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2343
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_1

    .line 2344
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setFontSize(I)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_2

    .line 1611
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1612
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setFontSize(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1613
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1614
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->refreshLineSpacing()V

    goto :goto_0

    .line 1616
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineHeightFromFontIndex()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1618
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1619
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->FONT_SIZE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1621
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_2

    .line 1622
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_2
    return-void
.end method

.method public setForceDisableJustification(Z)V
    .locals 1

    .line 3490
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_0

    return-void

    .line 3494
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 3495
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setForceDisableJustification(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 3496
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3497
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->TEXT_ALIGNMENT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 3499
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_2

    .line 3500
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_2
    return-void
.end method

.method public setInitialOrientation(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2455
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setOrientationInternal(IZ)V

    return-void
.end method

.method public setKindleIllustratedAutoPlayAnimations(Z)V
    .locals 1

    .line 2167
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2172
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2173
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setKindleIllustratedAutoPlayAnimations(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2174
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 2175
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public setKindleIllustratedSettings(ZLcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 3

    .line 2136
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2139
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v1, :cond_2

    .line 2140
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v1

    .line 2141
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setKindleIllustratedSettings(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2146
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    if-eq p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2148
    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 2150
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2151
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setContentDecorationSettings(Ljava/util/Collection;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2154
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    move-result p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2158
    new-instance p1, Lcom/amazon/kindle/event/ColorModeChangeEvent;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/event/ColorModeChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 2159
    iget-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    return-void
.end method

.method public setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2014
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2015
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2016
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2212
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by pixels when calculateLineSpacingInDocViewer() is enabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_2

    .line 2218
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2219
    new-instance v1, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    int-to-float p1, p1

    sget-object v2, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-direct {v1, p1, v2}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(FLcom/amazon/krf/platform/ViewSettings$PropertyUnit;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2220
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2221
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2223
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_2

    .line 2224
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_2
    return-void
.end method

.method public setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V
    .locals 1

    .line 2231
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2232
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by setting when calculateLineSpacingInDocViewer() is disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-nez v0, :cond_1

    return-void

    .line 2241
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->lineSpacingOptionsToMeasureValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;Lcom/amazon/android/docviewer/KindleDocLineSettings;)Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object p1

    .line 2242
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2243
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setLineSpacing(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2244
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2245
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2247
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_3

    .line 2248
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_3
    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 2184
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 2186
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 2187
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2188
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2189
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2190
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2192
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_1

    .line 2193
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_1
    return-void
.end method

.method public setMonospaceFontFace(Ljava/lang/String;)Z
    .locals 1

    .line 2367
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 2368
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2369
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setMonospaceFontFace(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2370
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2371
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MONOSPACE_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2373
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2460
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->setOrientationInternal(IZ)V

    return-void
.end method

.method public setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
    .locals 10

    .line 1637
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    if-ne p1, v0, :cond_0

    .line 1639
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Invalid reading mode shift in accessibility mode"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_d

    .line 1644
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1646
    invoke-static {p1}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v1

    .line 1649
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1650
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    .line 1651
    :cond_2
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    .line 1653
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "BookNavigator is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1659
    :cond_3
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 1662
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_pageInfoProvider:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v5, v1}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1663
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {v4}, Lcom/amazon/kindle/rendering/KRIFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1664
    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v4

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->updateWayPointsForTargetReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Z

    move-result v4

    if-eqz v2, :cond_6

    .line 1666
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    .line 1667
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    if-eqz v5, :cond_6

    .line 1668
    invoke-virtual {v5}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1671
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingModePositionsFactory()Lcom/amazon/kindle/util/ReadingModePositionsFactory;

    move-result-object v6

    .line 1672
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v7

    .line 1671
    invoke-virtual {v6, v2, v1, v7, v5}, Lcom/amazon/kindle/util/ReadingModePositionsFactory;->convertToEquivalentPositionForReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    goto :goto_3

    .line 1674
    :cond_5
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v5, v2, v1}, Lcom/amazon/krf/platform/KRFBook;->getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_6

    .line 1676
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_thumbnailManager:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    if-eqz v5, :cond_6

    .line 1677
    new-instance v6, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-direct {v6, v2}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    invoke-virtual {v5, v6}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 1678
    iget-object v5, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-interface {v5, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 1684
    :cond_6
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->onReadingModeChange(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    .line 1685
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v2

    .line 1686
    iget-object v5, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v5

    .line 1688
    invoke-static {p0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 1692
    sget-object v6, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {p1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSelectionEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1693
    iget-object v6, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v8, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    sget-object v9, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    invoke-virtual {p1, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v6, v8, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1697
    :cond_7
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1698
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1699
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->READING_MODE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1701
    :cond_8
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    .line 1702
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->READING_MODE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;)V

    .line 1704
    invoke-static {p0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1705
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "Chrome"

    const-string v6, "SwitchReadingMode"

    invoke-virtual {p1, v1, v6, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1710
    :cond_9
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1712
    invoke-virtual {p1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMinPossibleSeekPosition(I)V

    sub-int/2addr v5, v2

    sub-int/2addr v5, v7

    .line 1713
    invoke-virtual {p1, v5}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    :cond_a
    if-eqz v4, :cond_b

    .line 1718
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1720
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMRPRPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->navigateToPosition(I)V

    .line 1725
    :cond_b
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_c

    .line 1726
    invoke-interface {p1, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1727
    iput-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_tocTask:Ljava/util/concurrent/Future;

    .line 1729
    :cond_c
    iput-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 1730
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    :cond_d
    return-void
.end method

.method public setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1951
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1952
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V

    const/4 p1, 0x0

    .line 1953
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    :cond_0
    return-void
.end method

.method public setReadingRulerEnabled(Z)V
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1922
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1923
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerEnabled(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1924
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    const/4 p1, 0x1

    .line 1926
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    :cond_0
    return-void
.end method

.method public setReadingRulerOpacity(F)V
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1934
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerOpacity(F)V

    const/4 p1, 0x0

    .line 1935
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    :cond_0
    return-void
.end method

.method public setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1960
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1961
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V

    const/4 p1, 0x0

    .line 1962
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    :cond_0
    return-void
.end method

.method public setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V
    .locals 1

    .line 1941
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1942
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1943
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V

    const/4 p1, 0x0

    .line 1944
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applyReadingRulerSettings(Z)V

    :cond_0
    return-void
.end method

.method public setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 1

    .line 2834
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFView;->setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V

    .line 2836
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFView;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object p1

    .line 2837
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->hasStagedChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2838
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2839
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->applySettings()Z

    :cond_0
    return-void
.end method

.method public setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1828
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1829
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 1830
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 2642
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2643
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 2644
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    goto :goto_0

    .line 2646
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    .line 2647
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_1

    .line 2650
    new-instance v0, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v0, p1, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 2651
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/rendering/KRIFView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    :cond_1
    return-void
.end method

.method public setShowPageOnEnter(Z)V
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1992
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1993
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setShowPageOnEnter(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1994
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 1995
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public setShowPageOnExit(Z)V
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 2003
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 2004
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setShowPageOnExit(Z)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 2005
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 2006
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->m_krifView:Lcom/amazon/kindle/rendering/KRIFView;

    if-eqz v0, :cond_0

    .line 1981
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getKRIFSettingsControl()Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    move-result-object v0

    .line 1982
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFSettingsControl;->setTransitionDuration(I)Lcom/amazon/kindle/rendering/KRIFSettingsControl;

    .line 1983
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer;->inBatchSettingChangeMode:Z

    if-nez p1, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->applySettingsImmediately()Z

    :cond_0
    return-void
.end method

.method public supportsPageLabels()Z
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getPageLabelProvider()Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->hasPageNumbers()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsTouchAccessibility()Z
    .locals 3

    .line 2804
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2808
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    .line 2811
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public suppressLocations()Z
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/rendering/KRIFBookItem;

    .line 404
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isPageExclusiveLabeling()Z

    move-result v0

    return v0
.end method

.method public toggleFooter()V
    .locals 2

    .line 2870
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setIsDirty(Z)V

    .line 2871
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->refreshFooter()V

    return-void
.end method

.method public toggleHeader()V
    .locals 0

    return-void
.end method

.method public userLocationFromPosition(I)I
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLocationFromPosition(I)I

    move-result p1

    return p1
.end method

.method public windowSizeChanged()V
    .locals 1

    .line 2488
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->resizeView(I)V

    return-void
.end method
