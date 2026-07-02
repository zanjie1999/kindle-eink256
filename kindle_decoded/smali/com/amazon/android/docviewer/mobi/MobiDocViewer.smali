.class public Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
.super Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.source "MobiDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDoc;
.implements Lcom/amazon/android/docviewer/mobi/IPageProvider;
.implements Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;
.implements Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;
.implements Lcom/amazon/kindle/model/content/ILocalBookItemDocument;
.implements Lcom/amazon/kindle/yj/IMarginalContentProviderContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/docviewer/BaseKindleDocViewer;",
        "Lcom/amazon/android/docviewer/KindleDoc;",
        "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
        "Lcom/amazon/android/docviewer/IDocumentPage;",
        ">;",
        "Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;",
        "Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;",
        "Lcom/amazon/kindle/model/content/ILocalBookItemDocument;",
        "Lcom/amazon/kindle/yj/IMarginalContentProviderContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookNagivatorInitialized:Z

.field cacheFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;

.field private cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

.field private columnConfigProvider:Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

.field private docProvider:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private firstPageRenderLock:Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

.field footerLocationString:Ljava/lang/String;

.field private mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field

.field protected m_appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

.field private m_asyncHandler:Landroid/os/Handler;

.field private final m_bookGraphics:Lcom/amazon/android/docviewer/graphics/BookGraphics;

.field private m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

.field private m_currentPageRendered:Z

.field private m_currentTocRange:Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

.field m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

.field protected m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field private m_eventHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/IKindleDocViewerEvents;",
            ">;"
        }
    .end annotation
.end field

.field private m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

.field protected m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

.field private m_localBookStateDirty:Z

.field private m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field protected m_mobiViewInitialDrawn:Z

.field private m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

.field private m_pageNumberCalculator:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

.field private m_pageNumbersLoadedQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

.field private final m_postBackRenderHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/PostBackRenderHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final m_searcher:Lcom/amazon/android/docviewer/BookDocSearcher;

.field protected m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

.field m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

.field private m_startReadingPosition:I

.field private m_textAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

.field private m_toc:Lcom/amazon/android/docviewer/IKindleTOC;

.field private m_tocLock:Ljava/lang/Object;

.field protected m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

.field orientation:I

.field private pageDrawCallRequested:Z

.field private pos2Loc:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private readAnnotationsThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
    .locals 1

    .line 255
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    .line 265
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->docProvider:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    .line 266
    iput-object p5, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 268
    invoke-static {p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->supportsTicr(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    new-instance p1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    new-instance p2, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;

    invoke-direct {p2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;-><init>()V

    invoke-direct {p1, p2}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Create MobiDocViewer"

    .line 272
    invoke-static {p2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V
    .locals 5

    .line 276
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    const-string v0, ""

    .line 195
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->footerLocationString:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_tocLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    .line 242
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentPageRendered:Z

    .line 246
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pageDrawCallRequested:Z

    .line 248
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->bookNagivatorInitialized:Z

    .line 250
    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pos2Loc:Landroid/util/LruCache;

    const/4 v1, 0x0

    .line 483
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    const/4 v2, 0x1

    const-string v3, "Create MobiDocViewer"

    .line 277
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 278
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 280
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 281
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    .line 282
    new-instance p2, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;

    invoke-direct {p2}, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cacheFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;

    .line 284
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    .line 285
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    .line 286
    invoke-static {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    .line 288
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    .line 289
    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object p2

    .line 290
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 291
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 292
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 296
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getStartReadingPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v1

    iput v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startReadingPosition:I

    .line 298
    new-instance v1, Lcom/amazon/android/docviewer/graphics/BookGraphics;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/graphics/BookGraphics;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_bookGraphics:Lcom/amazon/android/docviewer/graphics/BookGraphics;

    .line 299
    new-instance v1, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-direct {v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    .line 306
    sget v1, Lcom/amazon/kindle/krl/R$bool;->luna_video_supported:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 307
    sget v3, Lcom/amazon/kindle/krl/R$bool;->luna_audio_supported:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 309
    sget-object v4, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->MultimediaContent:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setVideoCapability(Z)V

    .line 312
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAudioCapability(Z)V

    .line 317
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->btn_reader_play_white_normal:I

    invoke-static {p3, p1}, Lcom/amazon/android/util/UIUtils;->getImageResourceSize(Landroid/content/res/Resources;I)Landroid/graphics/Point;

    move-result-object p1

    .line 318
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 319
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 321
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAudioControlMinHeight(I)V

    .line 322
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAudioControlMinWidth(I)V

    .line 323
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setVideoControlMinHeight(I)V

    .line 324
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setVideoControlMinWidth(I)V

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getPathForKRFCache()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setCachePath(Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setMaxNumCaches(I)V

    .line 333
    new-instance p1, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/CommonKindleAnnotatedTextExtractor;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    .line 334
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->createBookDocSearcher()Lcom/amazon/android/docviewer/BookDocSearcher;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_searcher:Lcom/amazon/android/docviewer/BookDocSearcher;

    .line 336
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 338
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getTextAlignment()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_textAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 340
    new-instance p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    .line 341
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object v4

    invoke-direct {p1, p0, v1, v3, v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 343
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->initializeSeekbarVersion2IfApplicable()V

    .line 347
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    sget-object v1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->DEFAULT_PAGE_NUMBER_PROVIDER:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    invoke-direct {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;-><init>(Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    .line 350
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumbersLoadedQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 352
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setOpenedBook(Lcom/amazon/kindle/model/content/ILocalBookItemDocument;)V

    .line 354
    new-instance p1, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-direct {p1, v1}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumberCalculator:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    .line 356
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 357
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMobiDocFactory()Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocFactory;->createMobiDocTextFragment(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;)Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 358
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->populateStartPageFromLPR()V

    .line 360
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->addDocViewerEventHandlers()V

    .line 362
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->columnConfigProvider:Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    .line 364
    invoke-static {p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDefaultColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 370
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v3

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setFontSize(I)V

    .line 373
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v1

    if-nez v1, :cond_2

    .line 374
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setLanguage(Ljava/lang/String;)V

    .line 376
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setHasEmbeddedFonts(Z)V

    .line 378
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v1, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setDefaultFontFace(Ljava/lang/String;)Z

    .line 381
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigPath(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFallbackFontConfigPath(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setFontConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    .line 385
    invoke-virtual {v1, p2, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 395
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    .line 399
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p3

    sget-object v3, Lcom/amazon/kindle/model/content/BookOrientation;->LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

    const/4 v4, 0x2

    if-ne p3, v3, :cond_3

    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-ne p3, v4, :cond_4

    .line 401
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p3

    sget-object v3, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne p3, v3, :cond_6

    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-eq p3, v2, :cond_6

    .line 403
    :cond_4
    iget p3, v1, Landroid/graphics/Point;->x:I

    .line 404
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 405
    iput p3, v1, Landroid/graphics/Point;->y:I

    .line 406
    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-ne p3, v4, :cond_5

    const/4 p3, 0x1

    goto :goto_0

    :cond_5
    const/4 p3, 0x2

    :goto_0
    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    .line 415
    :cond_6
    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-ne p3, v4, :cond_7

    .line 416
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p3}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result p3

    invoke-virtual {p0, p3, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setColumnCount(IZ)V

    .line 420
    :cond_7
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsSubPixelRendering()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 427
    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    .line 429
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isSubpixelRenderingRotated(Landroid/content/Context;)Z

    move-result p3

    .line 428
    invoke-static {p1, v0, p3}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getSubPixelOrientationValue(IZZ)Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    move-result-object p1

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getValue()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSubPixelRenderingValue(IZ)V

    .line 433
    :cond_8
    sget p1, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    if-eq p1, v2, :cond_9

    const/4 p3, -0x1

    if-ne p1, p3, :cond_a

    .line 435
    :cond_9
    new-instance p1, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->firstPageRenderLock:Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    .line 438
    :cond_a
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget p3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->initializeRenderDimensions(IILandroid/content/Context;)V

    .line 439
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->registerDownloadProgressListener()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 177
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Z)Z
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;)Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumbersLoadedQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;I)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->logOrientationChangeComplete(I)V

    return-void
.end method

.method private destroyViewerNavigatorSafely()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->destroy()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumberCalculator:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->destroy()V

    .line 830
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->onBookClose()V

    .line 832
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->delete()V

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 835
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 837
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 839
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "Error closing file descriptor"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    :goto_0
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 844
    :cond_1
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 845
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->delete()V

    .line 846
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    return-void
.end method

.method private ensureHandlerInitalized()V
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_asyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2094
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_asyncHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V
    .locals 2

    .line 2811
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->causesReflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 2813
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onPageFlowChanged()V

    goto :goto_0

    .line 2818
    :cond_0
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->PRE_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 2819
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private getAdditionalLineSpacingFromProviders(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getAdditionalLineSpacingFromProviders(ILjava/util/Collection;)I

    move-result p1

    return p1
.end method

.method private getColumnSpacing()I
    .locals 4

    .line 1519
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1520
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->columnConfigProvider:Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result v1

    .line 1521
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->columnConfigProvider:Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMinimumColumnSpacing(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private populateStartPageFromLPR()V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2304
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    :cond_0
    return-void
.end method

.method private recordAnnotationsOnCurrentPage(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V
    .locals 8

    .line 3050
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 3051
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    .line 3058
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v2

    .line 3059
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    const/4 v3, 0x0

    .line 3062
    invoke-interface {v1, v3, v2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v3

    .line 3064
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Reading"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 3066
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const-string v6, "BookmarkPosition"

    .line 3065
    invoke-interface {p1, v5, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 3069
    invoke-interface {v1, v3, v2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v3

    .line 3070
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 3071
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const-string v7, "Highlight"

    invoke-interface {p1, v5, v7, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 3074
    invoke-interface {v1, v3, v2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v0

    .line 3075
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 3076
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const-string v3, "Note"

    invoke-interface {p1, v5, v3, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private registerDownloadProgressListener()V
    .locals 3

    .line 443
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    .line 471
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 472
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 474
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->registerDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method private resetLineSpacing(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            ">;)V"
        }
    .end annotation

    .line 2940
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 2941
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2943
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isJpVertContent()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result v0

    .line 2944
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setLineSpacingWithProviders(ILjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private setColorModeWithoutRestriction(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 1069
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->disableMobiViewInvalidating()V

    .line 1071
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->translateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)V

    const/4 v0, 0x1

    .line 1072
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings(Z)V

    .line 1073
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_1

    .line 1074
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_1
    return-void
.end method

.method private setFontSize(IZ)V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-nez v0, :cond_0

    .line 1168
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setFontSize(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1169
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFontSize()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 1170
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setFontSize(F)V

    .line 1171
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isJpVertContent()Z

    move-result p2

    .line 1172
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result p2

    .line 1173
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getAdditionalLineSpacingFromProviders(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 1174
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAdditionalLineSpacing(I)V

    .line 1179
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->disableMobiViewInvalidating()V

    .line 1181
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->FONT_SIZE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1183
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 1185
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_2

    .line 1186
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setFontSize(I)V

    .line 1187
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiView;->setLineSpacing(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setLineSpacingWithProviders(ILjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            ">;)V"
        }
    .end annotation

    .line 1310
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getAdditionalLineSpacingFromProviders(ILjava/util/Collection;)I

    move-result p2

    add-int/2addr p1, p2

    .line 1315
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1316
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isTimeDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1318
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/krl/R$bool;->book_reader_has_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setVerticalMargin(I)V

    .line 1325
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->updateMargin()V

    const/4 v1, 0x1

    .line 1329
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getLineSpacing()I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 1330
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAdditionalLineSpacing(I)V

    .line 1335
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->disableMobiViewInvalidating()V

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 1341
    sget-object p2, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1343
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 1345
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz p2, :cond_4

    .line 1346
    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setLineSpacing(I)V

    :cond_4
    return-void
.end method

.method private setSubPixelRenderingValue(IZ)V
    .locals 2

    .line 1578
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_3

    .line 1579
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 1580
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getSubpixelRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    :cond_0
    sget-object p1, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->UNKNOWN:Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/SubPixelRenderingOrientations;->getValue()I

    move-result p1

    .line 1583
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subpixel rendering value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setSubpixelRendering(I)V

    if-eqz p2, :cond_3

    .line 1588
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    :cond_3
    return-void
.end method

.method public static translateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)V
    .locals 1

    .line 2167
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2168
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColorMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2170
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColorMode(I)V

    .line 2172
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setTextColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    .line 2173
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setBackgroundColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    .line 2174
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getLinkColor()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/krfhacks/KRFHacks;->colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setLinkColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    return-void
.end method

.method private updateMargin()V
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setSpaceBetweenColumns(I)V

    .line 1475
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->disableMobiViewInvalidating()V

    .line 1480
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1481
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    return-void
.end method


# virtual methods
.method public addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 12
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

    .line 2953
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->delay_load_extra_asset_for_book_open:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isDoneWithInitialDraw()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2957
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v0

    .line 2958
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne p2, v1, :cond_1

    goto/16 :goto_5

    .line 2969
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2970
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 2971
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2972
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v3, " - "

    .line 2975
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2978
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2979
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 2982
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2983
    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2990
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 2991
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getFooters()Ljava/util/List;

    move-result-object v5

    .line 2992
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 2999
    :cond_5
    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_6

    const/high16 v6, 0x4f000000

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/mobi/MobiView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float v6, v6, v7

    .line 3000
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/krx/ui/IKRXFooter;

    .line 3001
    invoke-interface {v7}, Lcom/amazon/kindle/krx/ui/IKRXFooter;->getFooterText()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_3

    .line 3006
    :cond_7
    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v1, v4

    cmpl-float v8, v1, v6

    if-lez v8, :cond_9

    .line 3016
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 3017
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_8

    .line 3023
    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, ""

    invoke-direct {v9, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    move v1, v4

    .line 3028
    :cond_9
    new-instance v8, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v8, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    move-object p1, v3

    :cond_b
    :goto_5
    return-object p1
.end method

.method public addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 662
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 663
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public addPageBitmapRenderedListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->registerPageRenderedEventListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    :cond_0
    return-void
.end method

.method public addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyContentDecorationSettings()V
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->resetLineSpacing(Ljava/util/Collection;)V

    return-void
.end method

.method public applySettings()V
    .locals 1

    const/4 v0, 0x0

    .line 2291
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings(Z)V

    return-void
.end method

.method public applySettings(Z)V
    .locals 2

    .line 2295
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumberCalculator:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V

    .line 2296
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 2297
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->applySettings(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    :cond_0
    return-void
.end method

.method public attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2142
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getKRFExecutorService()Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    .line 2143
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;

    invoke-direct {v1, p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$7;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    return-void
.end method

.method public closeDocView()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->onRemoveFromDocViewer()V

    :cond_0
    return-void
.end method

.method public declared-synchronized closeDocument()V
    .locals 4

    monitor-enter p0

    .line 726
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing doc viewer for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->docProvider:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    .line 732
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_localBookStateDirty:Z

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v1

    .line 734
    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$3;

    invoke-direct {v2, p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 745
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 748
    :cond_1
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->closeDocument()V

    .line 750
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    if-eqz v1, :cond_3

    .line 751
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    if-eqz v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unregisterDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V

    .line 753
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mDownloadEventHandler:Lcom/amazon/kindle/event/IEventHandler;

    .line 755
    :cond_2
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 761
    :cond_3
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v1, :cond_4

    .line 762
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_appSettings:Lcom/amazon/kcp/application/IAppSettingsController;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    .line 763
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getHeight()I

    move-result v3

    .line 762
    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/application/IAppSettingsController;->setLastReadRenderElementDimen(II)V

    .line 766
    :cond_4
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->readAnnotationsThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 768
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->readAnnotationsThread:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 769
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->readAnnotationsThread:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->stopPopulateBookText(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    :catch_0
    :try_start_2
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Error while waiting for the readAnnotationThread to finish"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 780
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_searcher:Lcom/amazon/android/docviewer/BookDocSearcher;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->stop()V

    .line 784
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v1, :cond_6

    .line 785
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->dispose()V

    .line 795
    :cond_6
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v1, :cond_7

    .line 796
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiView;->enablePageInvalidation()V

    .line 797
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-object v1, v1, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v1, :cond_7

    .line 798
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-object v1, v1, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    .line 801
    :cond_7
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    .line 803
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->destroyViewerNavigatorSafely()V

    .line 805
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc viewer closed for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    :cond_8
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->dispose()V

    .line 810
    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method convertPositionToLPR(I)Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 3

    .line 2310
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2318
    :goto_0
    new-instance v1, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    return-object v1
.end method

.method protected createBookDocSearcher()Lcom/amazon/android/docviewer/BookDocSearcher;
    .locals 1

    .line 597
    new-instance v0, Lcom/amazon/android/docviewer/BookDocSearcher;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/BookDocSearcher;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public createDocView(Landroid/content/Context;)V
    .locals 1

    .line 708
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->supportPreloadBook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->needToReInitializePageFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->initializePageFlipper(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 714
    :cond_1
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    return-void
.end method

.method protected createObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 3145
    new-instance v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public createRenderedDocument()Lcom/amazon/android/docviewer/mobi/RenderedDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    .line 2585
    new-instance v6, Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    iget-object v4, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 2589
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCachedPageProvider()Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/mobi/CachedPageProvider;)V

    return-object v6
.end method

.method protected declared-synchronized createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 3

    monitor-enter p0

    .line 1948
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->docProvider:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->docProvider:Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;->getKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createWordIterator()Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1953
    new-instance v2, Lcom/amazon/kindle/search/KRFWordIterator;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/search/KRFWordIterator;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 1957
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public currentPageUpdated(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2642
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->enableMobiViewInvalidating()V

    :cond_0
    return-void
.end method

.method public debugApplySettings()V
    .locals 1

    const/4 v0, 0x1

    .line 2924
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings(Z)V

    return-void
.end method

.method public debugGetBackgroundColor()I
    .locals 1

    .line 2850
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    .line 2851
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getBackgroundColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intFromColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public debugGetFontSize()I
    .locals 1

    .line 2867
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFontSize()I

    move-result v0

    return v0
.end method

.method public debugGetLineSpacing()I
    .locals 1

    .line 2879
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getLineSpacing()I

    move-result v0

    return v0
.end method

.method public debugGetMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 2891
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 2892
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0

    .line 2894
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public debugGetTextColor()I
    .locals 1

    .line 2834
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getTextColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intFromColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public debugSetBackgroundColor(I)V
    .locals 2

    .line 2858
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2859
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColorMode(I)V

    .line 2860
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setBackgroundColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    .line 2861
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setMarginColor(I)V

    :cond_0
    return-void
.end method

.method public debugSetFontSize(I)V
    .locals 1

    .line 2872
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 2873
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setFontSize(F)V

    :cond_0
    return-void
.end method

.method public debugSetLineSpacing(I)V
    .locals 1

    .line 2884
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    .line 2885
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setAdditionalLineSpacing(I)V

    :cond_0
    return-void
.end method

.method public debugSetMargins(IIII)V
    .locals 4

    .line 2900
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 2902
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2904
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object p1

    .line 2906
    const-class p2, Lcom/amazon/android/docviewer/mobi/PageDrawable;

    const-string p3, "calculateAllMargins"

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 2907
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, p4, [Ljava/lang/Object;

    aput-object v0, p3, v3

    .line 2909
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2912
    sget-object p2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string p3, "failed to set margins in debugSetMargins()"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public debugSetMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3

    .line 2919
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->debugSetMargins(IIII)V

    return-void
.end method

.method public debugSetTextColor(I)V
    .locals 2

    .line 2842
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2843
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColorMode(I)V

    .line 2844
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->colorFromInt(I)Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setTextColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public disableMobiViewInvalidating()V
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 2626
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->disablePageInvalidation()V

    :cond_0
    return-void
.end method

.method public enableMobiViewInvalidating()V
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 2632
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->enablePageInvalidation()V

    :cond_0
    return-void
.end method

.method protected getAdditionalLineSpacingFromProviders(ILjava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            ">;)I"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    .line 1372
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1375
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 1376
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFontSize()I

    move-result v2

    .line 1377
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 1378
    invoke-interface {v3, p1, v2, v1}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getAdditionalLineSpacing(IILcom/amazon/kindle/krx/content/IBook;)I

    move-result v3

    if-le v3, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getAtLocationText(I)Ljava/lang/String;
    .locals 6

    .line 630
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 631
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->userLocationFromPosition(I)I

    move-result v1

    .line 632
    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_search_current_location_absolute:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->supportsPageLabels()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_search_current_page_absolute:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getBackDepth()J
    .locals 2

    .line 2479
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 2480
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getBackDepth()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBeginningPosition()I
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    return v0
.end method

.method public getBeginningPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 1842
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBeginningPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getBookEndPosition()I
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    return v0
.end method

.method public getBookFormat()Ljava/lang/String;
    .locals 1

    .line 2469
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    if-eqz v0, :cond_0

    .line 2470
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getBookGraphics()Lcom/amazon/android/docviewer/graphics/BookGraphics;
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_bookGraphics:Lcom/amazon/android/docviewer/graphics/BookGraphics;

    return-object v0
.end method

.method public getBookPositionBase()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCachedPageProvider()Lcom/amazon/android/docviewer/mobi/CachedPageProvider;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    .line 488
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    return-object v0
.end method

.method public getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1635
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageID()I
    .locals 1

    .line 2611
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2614
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getCurrentPageID()I

    move-result v0

    return v0
.end method

.method public getCurrentWordElements()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 2554
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getElements(I)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getDefaultColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 5

    .line 569
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 572
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 573
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 576
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v3

    .line 577
    sget-object v4, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$10;->$SwitchMap$com$amazon$kindle$model$content$ContentClass:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 583
    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v3, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0

    .line 579
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v3, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0

    .line 587
    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFontFace()Ljava/lang/String;
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1199
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPageID()I
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2621
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getDefaultPageID()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDocView()Landroid/view/View;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0
.end method

.method public getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    return-object p0
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

    .line 2548
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2549
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getElements(I)Ljava/util/Vector;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getEventHandlers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/IKindleDocViewerEvents;",
            ">;"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    return-object v0
.end method

.method public getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;
    .locals 1

    .line 2730
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->firstPageRenderLock:Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-nez v0, :cond_0

    .line 1132
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getFontSize()I

    move-result v0

    return v0

    .line 1134
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getFontSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
    .locals 1

    .line 3160
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    move-result-object v0

    .line 3161
    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->setMarginalContentProviderContext(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    return-object v0
.end method

.method public getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_footerContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    return-object v0
.end method

.method public getFooterLocationString()Ljava/lang/String;
    .locals 1

    .line 2688
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->footerLocationString:Ljava/lang/String;

    return-object v0
.end method

.method public getGotoTextWatcher()Landroid/text/TextWatcher;
    .locals 3

    .line 2354
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookEndPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->userLocationFromPosition(I)I

    move-result v0

    .line 2355
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->supportsPageLabels()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2356
    new-instance v1, Lcom/amazon/kcp/reader/GotoTextWatcher;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/GotoTextWatcher;-><init>(I)V

    return-object v1

    .line 2359
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->hasOnlyNumericPageLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2361
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2362
    new-instance v2, Lcom/amazon/kcp/reader/GotoTextWatcher;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/amazon/kcp/reader/GotoTextWatcher;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 2364
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t parse numeric max page label"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2369
    :cond_1
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$9;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$9;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    return-object v0
.end method

.method public getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;
    .locals 6

    .line 1876
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createImage(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1885
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 1896
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    .line 1898
    new-instance v2, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-direct {v2, p1, v3}, Lcom/amazon/android/docviewer/mobi/KRFImageProvider;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    return-object v2

    .line 1891
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getDataConst()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v2

    .line 1892
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v2

    .line 1893
    new-instance v3, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getHeight()I

    move-result v5

    invoke-direct {v3, p1, v4, v5, v2}, Lcom/amazon/android/docviewer/mobi/AndroidRasterImageProvider;-><init>(Ljava/lang/String;II[B)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1901
    :catch_0
    :try_start_2
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load image with id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", out of memory"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1903
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    return-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    .line 1904
    throw p1
.end method

.method public getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    return-object v0
.end method

.method getKRFCustomTaskReceiver()Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;
    .locals 1

    .line 2528
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2531
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getKRFCustomTaskReceiver()Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;

    move-result-object v0

    return-object v0
.end method

.method public getKRFExecutorService()Lcom/amazon/android/docviewer/mobi/KRFExecutorService;
    .locals 1

    .line 2523
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    return-object v0
.end method

.method public getLastPageRead()I
    .locals 2

    .line 1935
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getLastReadPosition()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    .line 1940
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getLocationFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    if-nez v0, :cond_0

    .line 1269
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSpacing()I

    move-result v0

    return v0

    .line 1271
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getAdditionalLineSpacing()I

    move-result v0

    return v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object v0
.end method

.method public getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;
    .locals 1

    .line 2283
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    return-object v0
.end method

.method public getMonospaceFontFace()Ljava/lang/String;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getDefaultMonospaceFontFace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNewPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2220
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNewPageDrawable(Landroid/content/Context;)Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    return-object v0
.end method

.method getNewPageDrawable(Landroid/content/Context;)Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 10

    .line 2224
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$bool;->book_reader_has_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    xor-int/lit8 v8, v0, 0x1

    if-nez v0, :cond_1

    .line 2228
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isTimeDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 2230
    :goto_1
    new-instance v0, Lcom/amazon/android/docviewer/mobi/BookPageDrawable;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/android/docviewer/mobi/BookPageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V

    return-object v0
.end method

.method public getNextChapterPosition(I)I
    .locals 1

    .line 3167
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3169
    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getNextChapterPosition(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 1645
    sget-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->NEXT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public getNotesLocationText(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1262
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_location_type:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1263
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

.method public getNumWordsBetweenPositions(III)I
    .locals 2

    .line 2448
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2450
    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 2451
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    if-eqz p1, :cond_1

    .line 2453
    iget p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-gt p1, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2455
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v1, p3, :cond_0

    goto :goto_1

    .line 2458
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    goto :goto_0

    .line 2461
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    :cond_2
    return v1
.end method

.method public getOrientation()I
    .locals 1

    .line 1595
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    return v0
.end method

.method public bridge synthetic getPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    return-object p1
.end method

.method public getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 3

    .line 2541
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2542
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 2

    .line 2561
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 2562
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getPageEndPosition()I
    .locals 2

    .line 1773
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    goto :goto_0

    .line 1781
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1790
    iget v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1792
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 1801
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageEndPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPageLabelForPosition(I)Ljava/lang/String;
    .locals 1

    .line 1811
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    return-object v0
.end method

.method getPageNumberCalculator()Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;
    .locals 1

    .line 2349
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageNumberCalculator:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    return-object v0
.end method

.method getPageProviderForRendering()Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation

    .line 2580
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    return-object v0
.end method

.method protected getPageRenderDrawableArray()Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
    .locals 1

    .line 2678
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    return-object v0
.end method

.method public getPageStartPosition()I
    .locals 2

    .line 1738
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    if-eqz v0, :cond_1

    .line 1744
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    goto :goto_0

    .line 1746
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 1754
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1755
    iget v0, v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1757
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 1766
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getPageState(I)[B
    .locals 1

    .line 2746
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2747
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getPageState(I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getPostBackRenderHelpers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/PostBackRenderHelper;",
            ">;"
        }
    .end annotation

    .line 2014
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 1640
    sget-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->PREVIOUS:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 1

    .line 1158
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 2507
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    .line 2509
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getReadingProgress(I)I

    move-result v0

    return v0
.end method

.method public getReadingProgress(I)I
    .locals 0

    .line 2513
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 2515
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2519
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    return-object v0
.end method

.method public getScrollToPositionListener()Lcom/amazon/android/docviewer/IScrollToPositionListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearcher()Lcom/amazon/android/docviewer/KindleDocSearcher;
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_searcher:Lcom/amazon/android/docviewer/BookDocSearcher;

    return-object v0
.end method

.method public getSelector()Lcom/amazon/android/docviewer/IObjectSelector;
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 649
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 651
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "getSelector failed"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getSettings()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpeechBreakersForCurrentPage()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
    .locals 4

    .line 855
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getKRFCustomTaskReceiver()Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 861
    :cond_0
    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v0, v1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 870
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->submitCustomKRFTask(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 876
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "Execution aborted of a future task to fetch speech breakers for the current page"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 872
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "Thread interrupted while executing a future task to fetch speech breakers for the current page"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public getStartPage()Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 1

    .line 2322
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    return-object v0
.end method

.method public getStartReadingPosition()I
    .locals 1

    .line 1826
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startReadingPosition:I

    return v0
.end method

.method public getStartReadingPositionObject()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 1

    .line 1831
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startReadingPosition:I

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    return-object v0
.end method

.method public getTOC()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_tocLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-static {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiBookTOC;->createInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/android/docviewer/mobi/MobiBookTOC;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 1606
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_toc:Lcom/amazon/android/docviewer/IKindleTOC;

    return-object v0

    :catchall_0
    move-exception v1

    .line 1606
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTOCForReadingMode(Lcom/amazon/kindle/krx/reader/BookReadingMode;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_textAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-object v0
.end method

.method public getTextBetweenPositions(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2399
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextBetweenPositions(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBetweenPositions(III)Ljava/lang/String;
    .locals 4

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2411
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2413
    invoke-interface {v1, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 2414
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 2417
    iget v3, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-gt v3, p2, :cond_3

    if-lez p3, :cond_0

    if-ge v2, p3, :cond_3

    .line 2418
    :cond_0
    iget-object p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 2419
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2420
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 2423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2422
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, " "

    .line 2424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 2430
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    goto :goto_0

    .line 2433
    :cond_3
    :goto_1
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 2435
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
    .locals 1

    .line 2287
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    return-object v0
.end method

.method public bridge synthetic getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->ticrEventHandler:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    return-object v0
.end method

.method public hasCoverPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasHierarchicalTOC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNextNavigationStop()Z
    .locals 1

    .line 2186
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2190
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->hasNextNavigationStop()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoExistingLocalLpr()Z
    .locals 2

    .line 2824
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getStartPage()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getStartPage()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

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

.method public hasPrevNavigationStop()Z
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->hasPrevNavigationStop()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->hasTOC()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeAndNavigateToLPR()Z
    .locals 4

    const/4 v0, 0x0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->initialize()V

    const/4 v1, 0x1

    .line 546
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->bookNagivatorInitialized:Z
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 551
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v3, "Unable to initialize MobiDocTextFragment after drawing cached page!"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method protected initializeRenderDimensions(IILandroid/content/Context;)V
    .locals 6

    .line 2698
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2699
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2700
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;->getCache()Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;->getSafeInsetsPair(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsetsPair;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getPortraitSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p3

    goto :goto_0

    .line 2702
    :cond_0
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;->getCache()Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;->getSafeInsetsPair(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsetsPair;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/util/device/SafeInsetsPair;->getLandscapeSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p3

    goto :goto_0

    .line 2705
    :cond_1
    invoke-static {p3}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p3

    :goto_0
    move-object v5, p3

    .line 2708
    new-instance v0, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {v0, p3, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2709
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnCount()I

    move-result v1

    .line 2710
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v4

    .line 2709
    invoke-static/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getRenderedPageRectangle(Landroid/graphics/Rect;ILcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/kcp/util/device/SafeInsets;)Landroid/graphics/Rect;

    move-result-object p3

    .line 2711
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setWidth(I)V

    .line 2712
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setHeight(I)V

    .line 2713
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobiDocViewer Init: Screen size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", render size is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", orientation is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public isBackAvailable()Z
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isBackAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBookNavigatorInitialized()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->bookNagivatorInitialized:Z

    return v0
.end method

.method isCoverPageAvailableKRF()Z
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 1701
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->hasCover()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoneWithInitialDraw()Z
    .locals 1

    .line 2019
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    return v0
.end method

.method public isNavigatingWithinPage()Z
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isNavigatingWithinPage()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isNextPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isPageDrawRequested()Z
    .locals 1

    .line 3139
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pageDrawCallRequested:Z

    return v0
.end method

.method public isPageTurnAnimationInProgress()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 618
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isPageTurnAnimationInProgress()Z

    move-result v0

    return v0
.end method

.method public isPrevPageAvailable()Z
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPrevPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1915
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1916
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result p1

    return p1

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z

    move-result p1

    return p1
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 2

    .line 1923
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1926
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1927
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result p1

    return p1

    .line 1930
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;I)Z

    move-result p1

    return p1
.end method

.method public loadAnnotations()V
    .locals 2

    .line 2071
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    .line 2089
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public navigateBack()V
    .locals 13

    .line 926
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBackDepth()J

    move-result-wide v0

    .line 927
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 928
    invoke-interface {v3, v0, v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerWillNavigateBack(J)V

    goto :goto_0

    .line 931
    :cond_0
    new-instance v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    sget-object v6, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    sget-object v7, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->BACK:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    const/4 v8, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    int-to-long v9, v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageEndPosition()I

    move-result v1

    int-to-long v11, v1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 933
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 935
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 936
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateBack(I)V

    :cond_1
    return-void
.end method

.method public navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_0
    return-void
.end method

.method public navigateToBeginning()V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToBeginning()V

    :cond_0
    return-void
.end method

.method public navigateToCover()V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToCover()V

    :cond_0
    return-void
.end method

.method public navigateToLocation(I)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToLocation(I)V

    :cond_0
    return-void
.end method

.method public navigateToNextChapter()V
    .locals 2

    .line 1008
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    if-nez v0, :cond_0

    return-void

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IBookTOC;->getNextChapterPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1014
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    :cond_1
    return-void
.end method

.method public navigateToNextNavigationStop()V
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToNextNavigationStop()V

    :cond_0
    return-void
.end method

.method public navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 910
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setPageDrawRequested(Z)V

    .line 911
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToPosition(I)V

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->convertPositionToLPR(I)Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    :goto_0
    return-void
.end method

.method public navigateToPosition(IZ)V
    .locals 0

    .line 989
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public navigateToPositionFromSearch(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1978
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1979
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    .line 1980
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    :cond_0
    return-void
.end method

.method public navigateToPrevNavigationStop()V
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToPrevNavigationStop()V

    :cond_0
    return-void
.end method

.method public navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 919
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setPageDrawRequested(Z)V

    .line 920
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_0
    return-void
.end method

.method public navigateToPreviousChapter()V
    .locals 2

    .line 1020
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    if-nez v0, :cond_0

    return-void

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IBookTOC;->getPreviousChapterPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1026
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    :cond_1
    return-void
.end method

.method public navigateToTOC()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToTOC()V

    :cond_0
    return-void
.end method

.method public nextPageUpdated(IZ)V
    .locals 0

    return-void
.end method

.method public onInitialDraw()V
    .locals 3

    .line 2024
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->onInitialDraw()V

    const/4 v0, 0x1

    const-string v1, "OnInitialDraw"

    .line 2026
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2027
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    if-nez v2, :cond_0

    .line 2028
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    .line 2030
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->initializeAndNavigateToLPR()Z

    .line 2038
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 2039
    invoke-interface {v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->loadAnnotations()V

    .line 2044
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v2, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->showMessage(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;)V

    .line 2045
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->checkToDisplayMRPRPopUpOnInitialDraw()V

    .line 2050
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->syncOnInitialDraw()V

    .line 2052
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createDelayedSearchIndexThread()V

    .line 2055
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 v0, 0x0

    .line 2057
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cachedPageProvider:Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    .line 2058
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->firstPageRenderLock:Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    const/4 v0, 0x0

    .line 2059
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 2493
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    .line 2498
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->enablePrerendering()V

    :cond_0
    return-void
.end method

.method public onViewDrawn()V
    .locals 2

    .line 2099
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2100
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    .line 2102
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->reportBookOpenMetric()V

    .line 2105
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    if-eqz v0, :cond_2

    .line 2106
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->ensureHandlerInitalized()V

    .line 2107
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_asyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2127
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 2128
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onCurrentPageDrawn()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected pageLabelFromPosition(I)Ljava/lang/String;
    .locals 1

    .line 1998
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->supportsPageLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2002
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageLabelFromPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public previousPageUpdated(IZ)V
    .locals 0

    return-void
.end method

.method recordChapterPoints(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V
    .locals 7

    .line 3089
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPreviousPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 3090
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNextPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    .line 3091
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3097
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    goto :goto_0

    .line 3098
    :cond_1
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    :goto_0
    if-eqz v1, :cond_2

    .line 3099
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v1

    goto :goto_1

    .line 3100
    :cond_2
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    .line 3102
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3105
    invoke-interface {v2, v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_6

    .line 3110
    iget v4, v3, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    if-gt v4, v1, :cond_6

    const-string v5, "Reading"

    if-lt v4, v0, :cond_3

    if-gt v4, v1, :cond_3

    const-string v6, "ChapterStart"

    .line 3112
    invoke-interface {p1, v5, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3116
    :cond_3
    iget v4, v3, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    if-lt v4, v0, :cond_4

    if-gt v4, v1, :cond_4

    const-string v6, "ChapterEnd"

    .line 3117
    invoke-interface {p1, v5, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3121
    :cond_4
    iget v4, v3, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v4}, Lcom/amazon/android/docviewer/IKindleTOC;->getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    move-result-object v4

    .line 3123
    invoke-virtual {v4, v3}, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public recordStatisticsOnPostNavigation()V
    .locals 1

    .line 3038
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3040
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 3041
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->recordChapterPoints(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V

    .line 3042
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->recordAnnotationsOnCurrentPage(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V

    :cond_0
    return-void
.end method

.method public refreshDocView()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->refresh()V

    :cond_0
    return-void
.end method

.method public refreshFooter()V
    .locals 2

    .line 1123
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setRefreshRequired(Z)V

    .line 1124
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->redrawFooters()V

    :cond_0
    return-void
.end method

.method public refreshHeader()V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->redrawHeaders()V

    :cond_0
    return-void
.end method

.method public removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 673
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 674
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public removePageBitmapRenderedListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageRenderDrawableArray:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->deregisterPageRenderedEventListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    :cond_0
    return-void
.end method

.method public removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_postBackRenderHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public renderFirstPage()Z
    .locals 4

    .line 507
    invoke-static {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    .line 511
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCachedPageProvider()Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCachedPageProvider()Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    move-result-object v1

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$2;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->setPageAndRender(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Z)V

    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setCurrentPageRendered(Z)V

    return v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->initializeAndNavigateToLPR()Z

    move-result v0

    return v0
.end method

.method public saveLocalBookState()V
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->saveState()V

    :cond_1
    return-void
.end method

.method sendPositionChangedEvent(ZI)V
    .locals 9

    if-nez p1, :cond_1

    .line 2236
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 2237
    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerBeforePositionChange(I)V

    goto :goto_0

    .line 2240
    :cond_0
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    goto :goto_2

    .line 2242
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_eventHandlers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 2243
    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerAfterPositionChanged(I)V

    goto :goto_1

    .line 2246
    :cond_2
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    :goto_2
    move-object v2, p1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    .line 2264
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 2265
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_3

    .line 2258
    :cond_3
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 2259
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_3

    .line 2253
    :cond_4
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    .line 2254
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_3
    move-object v3, p1

    move-object v4, p2

    .line 2267
    new-instance p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    .line 2268
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageEndPosition()I

    move-result p2

    int-to-long v7, p2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;JJ)V

    .line 2269
    new-instance p2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;

    invoke-direct {p2, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 5

    .line 1032
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1037
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$10;->$SwitchMap$com$amazon$kindle$model$content$ContentClass:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1047
    sget-object v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid content class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    :cond_1
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_1

    .line 1039
    :cond_2
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1051
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1052
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setColorModeWithoutRestriction(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_5
    return-void
.end method

.method public setColumnCount(IZ)V
    .locals 4

    .line 1417
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1422
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager;->getInstance()Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object v0

    .line 1424
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$10;->$SwitchMap$com$amazon$kcp$reader$ui$MultiColumnStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1438
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnCount()I

    move-result v0

    if-eq v0, p1, :cond_4

    if-lez p1, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColumnCount(I)V

    if-le p1, v1, :cond_3

    .line 1445
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnSpacing()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setSpaceBetweenColumns(I)V

    :cond_3
    if-eqz p2, :cond_4

    .line 1453
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->updateMargin()V

    :cond_4
    return-void
.end method

.method public setCurrentPageRendered(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentPageRendered:Z

    return-void
.end method

.method public setDefaultFontFace(Ljava/lang/String;)Z
    .locals 2

    .line 1204
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_3

    .line 1214
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1215
    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->isValidFontFace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 1216
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->disableMobiViewInvalidating()V

    .line 1223
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->DEFAULT_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1225
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 1226
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_4

    .line 1227
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->setDefaultFontFace(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public setFontConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2487
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setFontConfigurationFile(Ljava/lang/String;)V

    .line 2488
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setFallbackFontConfigurationFile(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1140
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setFontSize(IZ)V

    return-void
.end method

.method public setFooterLocationString(Ljava/lang/String;)V
    .locals 1

    .line 2682
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->footerLocationString:Ljava/lang/String;

    .line 2683
    new-instance p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;

    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->FOOTER_LOCATION_CHANGED:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    invoke-direct {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;)V

    .line 2684
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public setForceDisableJustification(Z)V
    .locals 0

    return-void
.end method

.method public setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V
    .locals 4

    .line 885
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v0

    .line 886
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getState()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 888
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 889
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v2

    sget-object v3, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    if-ne v2, v3, :cond_0

    .line 890
    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getTopazPageState(I)[B

    move-result-object v1

    .line 892
    :cond_0
    new-instance v2, Lcom/amazon/kindle/model/content/LastPageRead;

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadNumber()I

    move-result p1

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1278
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by pixels when calculateLineSpacingInDocViewer() is enabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1283
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setLineSpacingWithProviders(ILjava/util/Collection;)V

    return-void
.end method

.method public setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V
    .locals 3

    .line 1288
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set line spacing by setting when calculateLineSpacingInDocViewer() is disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    .line 1294
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 1295
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isJpVertContent()Z

    move-result v2

    .line 1299
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->serializationValue()I

    move-result p1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result p1

    const/4 v0, 0x0

    .line 1300
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setLineSpacingWithProviders(ILjava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public setLocalBookStateChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 2657
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_localBookStateDirty:Z

    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1399
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_margin:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 1400
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->updateMargin()V

    :cond_0
    return-void
.end method

.method public setMonospaceFontFace(Ljava/lang/String;)Z
    .locals 3

    .line 1241
    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->isValidFontFace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setDefaultMonospaceFontFace(Ljava/lang/String;)V

    .line 1244
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MONOSPACE_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1246
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    const/4 p1, 0x1

    return p1

    .line 1249
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobiDocViewer: Invalid monospace font face provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1528
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_2

    .line 1529
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-eq p1, v0, :cond_3

    .line 1530
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-eq v0, v1, :cond_0

    .line 1531
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsContentOrientationLock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1532
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->logOrientationChange(I)V

    const/4 v0, 0x1

    .line 1534
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientationChanged:Z

    .line 1541
    :cond_1
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->ORIENTATION:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1543
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    .line 1546
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-eqz v0, :cond_3

    .line 1547
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->setOrientation(I)V

    goto :goto_0

    .line 1551
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->TAG:Ljava/lang/String;

    const-string v0, "Trying to set orientation in MobiDocViewer on null document"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOrientation(II)V
    .locals 1

    .line 1557
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    .line 1558
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setOrientation(I)V

    const/4 p1, 0x0

    .line 1559
    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSubPixelRenderingValue(IZ)V

    :cond_0
    return-void
.end method

.method public setPageDrawRequested(Z)V
    .locals 0

    .line 3134
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pageDrawCallRequested:Z

    return-void
.end method

.method public setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
    .locals 1

    .line 1145
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1147
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 1148
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, v0, :cond_0

    .line 1151
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->onReadingModeChange(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method

.method setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->assign(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    .line 2134
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    return-void
.end method

.method public setSubPixelRenderingValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1574
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSubPixelRenderingValue(IZ)V

    return-void
.end method

.method public setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_textAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_textAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 1499
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_settings:Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->serializationValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setTextAlignment(I)V

    .line 1501
    sget-object p1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->TEXT_ALIGNMENT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->fireSettingsChangedEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    .line 1503
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    :cond_0
    return-void
.end method

.method public supportsPageLabels()Z
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_pageLabelProvider:Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPageLabelProvider;->hasPageNumbers()Z

    move-result v0

    return v0
.end method

.method public supportsTouchAccessibility()Z
    .locals 5

    .line 1720
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1724
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    .line 1725
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v2

    sget-object v3, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 1728
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public supportsZoom()Z
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentModeNavigator:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1715
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->supportsZoom()Z

    move-result v0

    return v0
.end method

.method public toggleFooter()V
    .locals 2

    .line 1117
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setIsDirty(Z)V

    .line 1118
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->refreshFooter()V

    return-void
.end method

.method public toggleHeader()V
    .locals 4

    .line 1091
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1093
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setTimeDisplayVisibility(Z)V

    if-eqz v0, :cond_0

    const-string v0, "TimeDisplayHeaderOn"

    goto :goto_0

    :cond_0
    const-string v0, "TimeDisplayHeaderOff"

    .line 1100
    :goto_0
    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "TimeDisplay"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1101
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 1102
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 1103
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->refreshHeader()V

    return-void
.end method

.method updateTocReadState()V
    .locals 3

    .line 2331
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v0

    .line 2334
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentTocRange:Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    if-gt v0, v2, :cond_0

    iget v1, v1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    if-ge v0, v1, :cond_1

    .line 2337
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentTocRange:Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    if-eqz v0, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    .line 2341
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_currentTocRange:Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    iget v1, v1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/model/content/LocalBookState;->setTocItemReadState(IZ)V

    .line 2342
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_localBookStateDirty:Z

    :cond_1
    return-void
.end method

.method public userLocationFromPosition(I)I
    .locals 2

    .line 1853
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pos2Loc:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    const/4 p1, -0x1

    return p1

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pos2Loc:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1860
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1863
    :cond_1
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    .line 1864
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getLocationFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1865
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->pos2Loc:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
