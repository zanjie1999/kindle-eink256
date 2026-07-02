.class public final Lcom/amazon/android/docviewer/pdf/PdfDocViewer;
.super Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.source "PdfDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfDocViewer$MopGHLPositionFactoryHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private annotationLoaderTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private firstPageLoadedEvent:Lcom/amazon/foundation/ICallback;

.field private m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

.field private final m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private m_eventHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/IKindleDocViewerEvents;",
            ">;"
        }
    .end annotation
.end field

.field private m_isBookOpenSpinnerInProgress:Z

.field private m_isFirstTimeOpen:Z

.field private m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field private m_needsDelayedRedraw:Z

.field private m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

.field private m_postBackRenderHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/PostBackRenderHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;[Ljava/lang/String;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;[Ljava/lang/String;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_isFirstTimeOpen:Z

    const/4 p3, 0x0

    .line 96
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    .line 128
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p3

    sget-object p5, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 129
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    invoke-virtual {p3, p5, v0}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 131
    new-instance p3, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 132
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    const/4 p2, 0x0

    .line 133
    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResult:Lcom/amazon/android/docviewer/BookSearchResult;

    .line 136
    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;

    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfAnnotatedTextExtractor;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    .line 137
    new-instance p2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iget-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    .line 138
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object p4

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 139
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 140
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->loadAnnotations()V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 144
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 146
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$integer;->waypoints_max_points:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 148
    :goto_0
    new-instance p3, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-direct {p3, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;-><init>(I)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 150
    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    iget-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-direct {p2, p0, p3}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    .line 151
    new-instance p2, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;

    iget-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-direct {p2, p0, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_selector:Lcom/amazon/android/docviewer/IObjectSelector;

    .line 153
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    .line 155
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 156
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    .line 157
    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 159
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->addDocViewerEventHandlers()V

    .line 161
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V

    .line 162
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setOpenedBook(Lcom/amazon/kindle/model/content/ILocalBookItemDocument;)V

    .line 164
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->annotationLoaderTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->refreshAnnotations()V

    return-void
.end method

.method private refreshAnnotations()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->refresh()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 586
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerRefresh()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addDocViewerEventHandlers()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    goto :goto_0

    .line 174
    :cond_0
    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsControllerThumbnailScrubber;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsControllerThumbnailScrubber;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    :cond_1
    :goto_0
    return-void
.end method

.method public addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 263
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforePageTurn()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 842
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerBeforePageTurn()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closeDocView()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead()V

    .line 302
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->close()V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    :cond_0
    return-void
.end method

.method public closeDocument()V
    .locals 1

    .line 309
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->closeDocument()V

    .line 310
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->close()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 315
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->close()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    .line 317
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->close()V

    .line 319
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->onBookClose()V

    .line 320
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public createDocView(Landroid/content/Context;)V
    .locals 2

    .line 288
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->TAG:Ljava/lang/String;

    const-string v1, "Creating PDFView..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    .line 291
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getLastPageRead()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPageIndex(I)V

    :cond_0
    return-void
.end method

.method protected createObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 941
    new-instance v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 218
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 219
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 221
    new-instance p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/docviewer/grid/GridPositionRange;-><init>(II)V

    return-object p1

    .line 223
    :cond_0
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    return-object p1
.end method

.method public createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 3

    .line 207
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 208
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 209
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    .line 210
    new-instance p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    invoke-direct {p1, v0, v1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;-><init>(II)V

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {p1, v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    return-object p1
.end method

.method protected createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    .line 816
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfWordIterator;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    return-object v0
.end method

.method public currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 229
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGeometricStartPosition()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGeometricEndPosition()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 233
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method

.method getAnnotationAreaManager()Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    return-object v0
.end method

.method public getAtLocationText(I)Ljava/lang/String;
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->supportsPageLabels()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$string;->reader_search_current_page_absolute:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 249
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 252
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$string;->reader_search_current_page_absolute:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 253
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBackDepth()J
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBackDepth()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    return-object v0
.end method

.method public bridge synthetic getDocument()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    return-object v0
.end method

.method public getElementsOnCurrentPage(I)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 928
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 930
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 932
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements()Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGHLPositionFactory()Lcom/amazon/android/docviewer/MopGHLPositionFactory;
    .locals 1

    .line 918
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$MopGHLPositionFactoryHolder;->INSTANCE:Lcom/amazon/android/docviewer/MopGHLPositionFactory;

    return-object v0
.end method

.method public bridge synthetic getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getGHLPositionFactory()Lcom/amazon/android/docviewer/MopGHLPositionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 2

    .line 880
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 881
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 882
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    .line 883
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicDimensionsForRange(IIII)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicDimensionsForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicDimensionsForRange(IIII)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 910
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 911
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 912
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    .line 913
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRange(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForRange(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object v0
.end method

.method public getNotesLocationText(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 577
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_page_type:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageIndexFromPosition(I)I
    .locals 0

    .line 572
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    return p1
.end method

.method public getPagePortraitSize(Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 2

    .line 895
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 896
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result v0

    .line 897
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    .line 898
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPortraitSizeForGraphic(IIIF)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPortraitSizeForGraphic(IIIF)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getPositionFromPageIndex(I)I
    .locals 0

    .line 568
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    return p1
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 637
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-object v0
.end method

.method public getScrollToPositionListener()Lcom/amazon/android/docviewer/IScrollToPositionListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidLocationFromLocation(I)I
    .locals 0

    .line 848
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result p1

    return p1
.end method

.method public hasNoExistingLocalLpr()Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getLastPageRead()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBookOpenSpinnerInProgress()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_isBookOpenSpinnerInProgress:Z

    return v0
.end method

.method public isContrastLevelChangeSupported()Z
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->pdf_contrast_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDoneWithInitialDraw()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    return v0
.end method

.method public isFirstTimeOpen()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_isFirstTimeOpen:Z

    return v0
.end method

.method public isLineSpacingChangeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMarginChangeSupported()Z
    .locals 2

    .line 615
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->pdf_margin_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPageTurnAnimationInProgress()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isPageTurnAnimationInProgress()Z

    move-result v0

    return v0
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result p1

    return p1
.end method

.method public loadAnnotations()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->annotationLoaderTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 652
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$2;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->annotationLoaderTask:Ljava/util/concurrent/Future;

    return-void
.end method

.method public navigateBack()V
    .locals 13

    .line 342
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getVisitedHistory()I

    move-result v0

    .line 344
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getBackDepth()J

    move-result-wide v1

    .line 346
    new-instance v12, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    sget-object v6, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 347
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v3

    int-to-long v8, v3

    .line 348
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageEndPosition()I

    move-result v3

    int-to-long v10, v3

    const/4 v7, 0x0

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 349
    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v3, v12}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 v3, 0x0

    .line 353
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    .line 354
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/PostBackRenderHelper;

    .line 355
    invoke-interface {v4, v1, v2}, Lcom/amazon/android/docviewer/PostBackRenderHelper;->shouldRenderAfterGoingBack(J)Z

    move-result v4

    xor-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    if-ne v4, v5, :cond_0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v1, :cond_2

    .line 362
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    xor-int/2addr v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(IZ)V

    :cond_2
    return-void
.end method

.method public navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 625
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 626
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 627
    invoke-static {p0, v0}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getPositionEquivalentFromGeometricPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)I

    move-result v0

    .line 629
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public navigateToBeginning()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBeginningPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory()V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(I)V

    :cond_1
    return-void
.end method

.method public navigateToCover()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(I)V

    :cond_1
    return-void
.end method

.method public navigateToLocation(I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 406
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(I)V

    :cond_1
    return-void
.end method

.method public navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoNextPage()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 420
    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    :cond_1
    return-void
.end method

.method navigateToPageIndex(I)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(I)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 2

    .line 445
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v0

    .line 448
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory()V

    .line 450
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 461
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    .line 460
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->addVisitedHistory(I)V

    .line 464
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 467
    :cond_1
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    .line 478
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public navigateToPosition(IZ)V
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public navigateToPositionFromSearch(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPosition(I)V

    const/4 p1, 0x1

    .line 500
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    return-void
.end method

.method public navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPrevPage()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 430
    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    :cond_1
    return-void
.end method

.method public needsDelayedRedraw()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    return v0
.end method

.method public notifyFirstPageLoadedEvent()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->firstPageLoadedEvent:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->firstPageLoadedEvent:Lcom/amazon/foundation/ICallback;

    :cond_0
    return-void
.end method

.method public notifyRenderComplete()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_document:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->runSubmittedBackgroundTasks()V

    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 325
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 326
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->refreshAnnotations()V

    :cond_0
    return-void
.end method

.method public onContrastLevelChanged()V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isContrastLevelChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->forceRefresh()V

    :cond_0
    return-void
.end method

.method public onDocViewerAfterPositionChanged(I)V
    .locals 10

    .line 786
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 787
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerAfterPositionChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 805
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 806
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_1

    .line 799
    :cond_1
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 800
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_1

    .line 794
    :cond_2
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 795
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_1
    move-object v4, p1

    move-object v5, v0

    .line 809
    new-instance p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    sget-object v3, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 810
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageEndPosition()I

    move-result v0

    int-to-long v8, v0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 811
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDocViewerBeforePositionChanged(I)V
    .locals 10

    .line 756
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 757
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerBeforePositionChange(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 775
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 776
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_1

    .line 769
    :cond_1
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 770
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_1

    .line 764
    :cond_2
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 765
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_1
    move-object v4, p1

    move-object v5, v0

    .line 779
    new-instance p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    sget-object v3, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    .line 780
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPosition()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageEndPosition()I

    move-result v0

    int-to-long v8, v0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 781
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onInitialDraw()V
    .locals 2

    .line 722
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->onInitialDraw()V

    .line 723
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->checkToDisplayMRPRPopUpOnInitialDraw()V

    .line 728
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->syncOnInitialDraw()V

    .line 730
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createDelayedSearchIndexThread()V

    .line 733
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 735
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 736
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    .line 737
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->reportBookOpenMetric()V

    :cond_0
    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_isFirstTimeOpen:Z

    return-void
.end method

.method public onKRIFNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 369
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne p1, v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getBackDepth()J

    move-result-wide v0

    .line 373
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 374
    invoke-interface {v2, v0, v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerWillNavigateBack(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageLayoutChanged()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 826
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onPageFlowChanged()V

    .line 832
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onAfterSettingsChange()V

    goto :goto_0

    .line 835
    :cond_0
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    sget-object v2, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->PAGE_LAYOUT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 837
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method onRefresh()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead()V

    .line 556
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 558
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerRefresh()V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->onRefresh()V

    .line 563
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_annotationAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;-><init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_selector:Lcom/amazon/android/docviewer/IObjectSelector;

    .line 564
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    .line 704
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    .line 708
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->drawPage()V

    .line 710
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_needsDelayedRedraw:Z

    :cond_0
    return-void
.end method

.method public openAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 597
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshDocView()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->refresh()V

    :cond_0
    return-void
.end method

.method public removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_eventHandlers:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBookOpenSpinnerInProgress(Z)V
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_isBookOpenSpinnerInProgress:Z

    return-void
.end method

.method public setFirstPageLoadedEvent(Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->firstPageLoadedEvent:Lcom/amazon/foundation/ICallback;

    return-void
.end method

.method public setFontConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToPosition(I)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->navigateToBeginning()V

    :goto_0
    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 524
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 525
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isMarginChangeSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->forceRefresh()V

    :cond_0
    return-void
.end method

.method public setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
    .locals 0

    return-void
.end method

.method public supportsPageLabels()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTouchAccessibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsZoom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public suppressLocations()Z
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->supportsPageLabels()Z

    move-result v0

    return v0
.end method
