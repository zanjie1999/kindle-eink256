.class public Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;
.super Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
.source "NewsstandDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;,
        Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    }
.end annotation


# static fields
.field private static final MAGAZINE_TYPE:Ljava/lang/String; = "Magazine"

.field private static final NEWSPAPER_TYPE:Ljava/lang/String; = "Newspaper"

.field private static final NON_REPLICA_MAGAZINE_TYPE:Ljava/lang/String; = "NonReplicaMagazine"

.field private static final TAG:Ljava/lang/String;

.field private static final m_LocalyticsAppKey:Ljava/lang/String; = "2688f76e890053656094549-12e240da-fbad-11e3-2075-004a77f8b47f"


# instance fields
.field private mIsInitialDraw:Z

.field private final mOnInitialDrawListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageRenderedEventListener:Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;

.field private mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

.field private m_EventHandler:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;

.field private m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

.field private final m_accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final m_bookmarkManager:Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

.field private m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

.field private m_isImageViewPageCurlEnabled:Z

.field private m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

.field private m_pageCurlActivationCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;

.field private m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

.field private m_toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

.field private m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

.field private modeChangeListener:Lcom/amazon/android/docviewer/mobi/ModeChangeListener;

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
    .locals 5

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V

    const/4 p2, 0x0

    .line 87
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_EventHandler:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;

    const/4 p3, 0x0

    .line 98
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_isImageViewPageCurlEnabled:Z

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mOnInitialDrawListeners:Ljava/util/HashSet;

    .line 134
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mIsInitialDraw:Z

    .line 156
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->setAsin(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->setTitle(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_accessibility_mode_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0

    .line 162
    :cond_0
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 166
    :goto_0
    new-instance v1, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    .line 169
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 172
    new-instance v1, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->LANDSCAPE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->PORTRAIT:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    :goto_1
    invoke-direct {v1, v2}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;-><init>(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    .line 174
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->initializeViewMode()V

    .line 175
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 178
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 188
    new-instance v1, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/IKindleTOC;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_bookmarkManager:Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    .line 190
    new-instance v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;

    invoke-direct {v1, p0, p2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$1;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_EventHandler:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;

    .line 191
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 194
    new-instance p2, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;

    invoke-direct {p2}, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mPageRenderedEventListener:Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;

    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->addPageBitmapRenderedListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/nwstd/upsell/UpsellController;->shouldEnableUpsell(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 199
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/nwstd/service/NwstdIntentService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UpsellCoverSync"

    .line 200
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v0, [Ljava/lang/String;

    .line 201
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    const-string p1, "ParentAsins"

    .line 202
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->addMetricsLoggers(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportNewsstandOpenMetrics()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    return-object p0
.end method

.method private addMetricsLoggers(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 6

    const-string v0, "NewsstandDocViewer.addMetricsLoggers()"

    const/4 v1, 0x1

    .line 212
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 214
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    new-instance v2, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;

    invoke-direct {v2, p1}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->addMetricsLogger(Lcom/amazon/nwstd/metrics/IMetricsLogger;)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_localytics_logger_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    new-instance v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "2688f76e890053656094549-12e240da-fbad-11e3-2075-004a77f8b47f"

    invoke-direct {v2, v3, p1, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;-><init>(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->addMetricsLogger(Lcom/amazon/nwstd/metrics/IMetricsLogger;)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/upsell/UpsellController;->shouldEnableUpsell(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    new-instance v2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;-><init>(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->addMetricsLogger(Lcom/amazon/nwstd/metrics/IMetricsLogger;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    new-instance v2, Lcom/amazon/nwstd/metrics/loggers/ReplicaDCPMetricsLogger;

    invoke-direct {v2, p1}, Lcom/amazon/nwstd/metrics/loggers/ReplicaDCPMetricsLogger;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->addMetricsLogger(Lcom/amazon/nwstd/metrics/IMetricsLogger;)V

    const/4 p1, 0x0

    .line 232
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private getArticleAtOffset(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 2

    .line 835
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 843
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getArticleAtOffset(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p1

    return-object p1
.end method

.method private initializeViewMode()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastReadViewMode()Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    if-ne v0, v1, :cond_0

    .line 355
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    :goto_0
    return-void
.end method

.method private isNewtronPhase1Enabled()Z
    .locals 2

    .line 979
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private populateStartPageFromLPR()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    :cond_0
    return-void
.end method

.method public static reportAndroidVersionMetric(Ljava/lang/String;)V
    .locals 2

    .line 851
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 852
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LT11"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 854
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LT14"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 856
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LT16"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 858
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE16"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static reportMaxMemoryMetric(Ljava/lang/String;)V
    .locals 5

    .line 864
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 865
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 868
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE256"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x200

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 870
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE512"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x300

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 872
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE768"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 874
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE1024"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 876
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GT1024"

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private reportNewsstandOpenMetrics()V
    .locals 11

    .line 652
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 653
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_a

    .line 654
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getLoggableOriginType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const-string v5, "NewsstandMaxMemoryTextContent"

    const-string v6, "NewsstandScreenSizeTextContent"

    const-string v7, "NewsstandAndroidVersion"

    if-ne v3, v4, :cond_6

    .line 663
    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v3, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->shouldEnableUpsell(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->value(Ljava/lang/String;)Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 667
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 669
    :cond_1
    sget-object v3, Lcom/amazon/nwstd/resources/PeriodicalsOriginType;->UNDEFINED_PERIODICALTYPE:Lcom/amazon/nwstd/resources/PeriodicalsOriginType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 670
    sget-object v4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->TAG:Ljava/lang/String;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PeriodicalOriginType is misssing in the PeriodicalOriginType List "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v10

    invoke-interface {v10}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 672
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    const-string v8, "OpenReplicaMagazineTrialDocument"

    const-string v9, "NewsstandContentExplorerView"

    invoke-virtual {v4, v9, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_2
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    const-string v3, "NewsstandMaxMemoryReplica"

    const-string v4, "NewsstandOpenMode"

    if-nez v0, :cond_3

    .line 679
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v5, "Degraded"

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NewsstandScreenSizeReplicaDegraded"

    .line 680
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportScreenSizeMetric(Ljava/lang/String;)V

    const-string v0, "NewsstandAndroidVersionDegraded"

    .line 681
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportAndroidVersionMetric(Ljava/lang/String;)V

    .line 682
    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportMaxMemoryMetric(Ljava/lang/String;)V

    goto :goto_1

    .line 684
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v5, "Normal"

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NewsstandScreenSizeReplica"

    .line 685
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportScreenSizeMetric(Ljava/lang/String;)V

    .line 686
    invoke-static {v7}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportAndroidVersionMetric(Ljava/lang/String;)V

    .line 687
    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportMaxMemoryMetric(Ljava/lang/String;)V

    .line 689
    :goto_1
    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "PeriodicalsAppPreferences"

    .line 690
    invoke-interface {v0, v4, v3, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 693
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CurlON"

    goto :goto_2

    :cond_4
    const-string v0, "CurlOFF"

    .line 696
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "NewsstandOpenModeCurl"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "NewsstandOpenReplicaOriginType"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Magazine"

    goto :goto_3

    .line 702
    :cond_5
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportScreenSizeMetric(Ljava/lang/String;)V

    .line 703
    invoke-static {v7}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportAndroidVersionMetric(Ljava/lang/String;)V

    .line 704
    invoke-static {v5}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportMaxMemoryMetric(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "NewsstandOpenNonReplicaOriginType"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NonReplicaMagazine"

    goto :goto_3

    .line 708
    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v3, :cond_7

    .line 711
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportScreenSizeMetric(Ljava/lang/String;)V

    .line 712
    invoke-static {v7}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportAndroidVersionMetric(Ljava/lang/String;)V

    .line 713
    invoke-static {v5}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->reportMaxMemoryMetric(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "NewsstandOpenNewspaperOriginType"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Newspaper"

    goto :goto_3

    :cond_7
    const-string v0, ""

    .line 717
    :goto_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "NewsstandOpenContentType"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const-string v2, "NewsstandOpenModeOrientation"

    if-ne v0, v1, :cond_8

    .line 723
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Landscape"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 727
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Portrait"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 731
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Undefined"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private reportScreenSizeMetric(Ljava/lang/String;)V
    .locals 3

    .line 736
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 737
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_1

    .line 742
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE480"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x258

    if-gt v0, v1, :cond_2

    .line 744
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE600"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x320

    if-gt v0, v1, :cond_3

    .line 746
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE800"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x400

    if-gt v0, v1, :cond_4

    .line 748
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE1024"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x640

    if-gt v0, v1, :cond_5

    .line 750
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LE1600"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GT1600"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateLocalBookState()V
    .locals 3

    .line 540
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v2, :cond_0

    .line 544
    sget-object v1, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->TEXT:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadViewMode(Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v1, :cond_1

    .line 547
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadPage(I)V

    .line 548
    sget-object v1, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->IMAGE:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/model/content/LocalBookState;->setLastReadViewMode(Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public activateImageViewPageCurl()V
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_isImageViewPageCurlEnabled:Z

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->activateImageViewPageCurl(Z)V

    return-void
.end method

.method public activateImageViewPageCurl(Z)V
    .locals 1

    .line 615
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_isImageViewPageCurlEnabled:Z

    .line 617
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_pageCurlActivationCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    :cond_0
    return-void
.end method

.method public addOnInitialDrawListener(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeDocument()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 393
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->destroy()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_EventHandler:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$NewsstandDocViewerEventHandler;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 401
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->reportNewsstandUserBehaviorMetrics()V

    .line 404
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;->closeSession()V

    .line 406
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mPageRenderedEventListener:Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->removePageBitmapRenderedListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->updateLocalBookState()V

    .line 417
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setLocalBookStateChanged()V

    .line 419
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->closeDocument()V

    .line 421
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz v0, :cond_2

    .line 422
    invoke-interface {v0}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->clearBackHistory()V

    :cond_2
    return-void
.end method

.method protected createBookDocSearcher()Lcom/amazon/android/docviewer/BookDocSearcher;
    .locals 1

    .line 759
    new-instance v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    return-object v0
.end method

.method public createDocView(Landroid/content/Context;)V
    .locals 1

    .line 528
    new-instance v0, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    return-void
.end method

.method public enablePageCurl(Z)V
    .locals 0

    .line 975
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->activateImageViewPageCurl(Z)V

    return-void
.end method

.method public getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_bookmarkManager:Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    return-object v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 3

    .line 960
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 961
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0

    .line 964
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;
    .locals 6

    .line 884
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 885
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object p1

    return-object p1

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 894
    :cond_1
    :try_start_0
    new-instance v0, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;

    invoke-direct {v0, p0, p1}, Lcom/amazon/nwstd/docviewer/KRFNativeImageProvider;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 896
    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load image id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getKrfKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_MetricsHelper:Lcom/amazon/nwstd/metrics/helper/CommonMetricsHelper;

    return-object v0
.end method

.method public getNewPageDrawable(Landroid/content/Context;)Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 3

    .line 632
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->book_reader_has_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 634
    :goto_0
    new-instance v2, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZ)V

    return-object v2
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->FIXED:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/dualreadingmode/ReadingMode;->BOOK_DEFAULT:Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    :goto_0
    return-object v0
.end method

.method public getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mReplicaBehaviorMetricsHelper:Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    return-object v0
.end method

.method public getTOC()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    .line 534
    invoke-static {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->createInstance(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_toc:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    return-object v0
.end method

.method public getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/amazon/android/docviewer/KindleTOCLocator;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;-><init>(Lcom/amazon/android/docviewer/KindleDoc;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_tocLocator:Lcom/amazon/android/docviewer/KindleTOCLocator;

    return-object v0
.end method

.method public getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    return-object v0
.end method

.method public isBackAvailable()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->isBackAvailable()Z

    move-result v0

    return v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->isBackAvailable()Z

    move-result v0

    return v0
.end method

.method public isChapterNavigationSupported()Z
    .locals 3

    .line 803
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isNewtronPhase1Enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isImageViewEnabled()Z
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isNewtronPhase1Enabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 255
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v3

    instance-of v3, v3, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v3, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_replica_view_enabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesOpenGLMeetRequirements(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public isImageViewPageCurlEnabled()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_isImageViewPageCurlEnabled:Z

    return v0
.end method

.method protected logOrientationChange(I)V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 797
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->logOrientationChange(I)V

    :cond_0
    return-void
.end method

.method public navigateBack()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->navigateBack()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->navigateBack(I)V

    :goto_0
    return-void
.end method

.method public navigateToNextChapter()V
    .locals 4

    const/4 v0, 0x1

    .line 812
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getArticleAtOffset(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "PeriodicalReaderActivity"

    const-string v3, "NextArticleViaPeriodicalReaderMenu"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IGoto;->gotoLocation()V

    :cond_0
    return-void
.end method

.method public navigateToPageIndex(I)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-eq v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->navigateToNewReplicaPageIndex(I)V

    :cond_0
    return-void
.end method

.method public navigateToPosition(I)V
    .locals 6

    .line 465
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->addTextViewHistoryPoint(I)V

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isNewtronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-eq v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getMaximumPageIndexValue()I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookEndPosition()I

    move-result v1

    int-to-double v2, p1

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v0, v0

    mul-double v2, v2, v0

    double-to-int v0, v2

    .line 478
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->navigateToNewReplicaPageIndex(I)V

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->navigateToPosition(I)V

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->convertPositionToLPR(I)Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    :goto_0
    return-void
.end method

.method public navigateToPosition(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 497
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPosition(I)V

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->navigateToPosition(I)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->convertPositionToLPR(I)Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_startPage:Lcom/amazon/kindle/model/content/LastPageRead;

    :goto_0
    return-void
.end method

.method public navigateToPreviousChapter()V
    .locals 4

    const/4 v0, -0x1

    .line 822
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getArticleAtOffset(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "PeriodicalReaderActivity"

    const-string v3, "PreviousArticleViaPeriodicalReaderMenu"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IGoto;->gotoLocation()V

    :cond_0
    return-void
.end method

.method public onViewDrawn()V
    .locals 4

    .line 905
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->onViewDrawn()V

    .line 907
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mIsInitialDraw:Z

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 909
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 910
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 910
    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 912
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 914
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mIsInitialDraw:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordStatisticsOnPostNavigation()V
    .locals 1

    .line 969
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->recordStatisticsOnPostNavigation()V

    const/4 v0, 0x0

    .line 970
    invoke-static {p0, v0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    return-void
.end method

.method public registerPageRenderedCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mPageRenderedEventListener:Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->registerOneShotCallback(Lcom/amazon/foundation/ICallback;)V

    :cond_0
    return-void
.end method

.method public releaseTextView()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageRenderDrawableArray()Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->recycle()V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMobiRenderElementFactory()Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 384
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;->releaseCache(I)V

    :cond_1
    return-void
.end method

.method public removeOnInitialDrawListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveLocalBookState()V
    .locals 3

    .line 554
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    .line 556
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->updateLocalBookState()V

    .line 558
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$2;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/LocalBookState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 570
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->writeAnnotations()V

    return-void
.end method

.method public setActivatePageCurlCallback(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_pageCurlActivationCallBack:Lcom/amazon/foundation/internal/IBooleanCallback;

    return-void
.end method

.method public setImageViewPageCurl(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_isImageViewPageCurlEnabled:Z

    return-void
.end method

.method public setModeChangeHandler(Lcom/amazon/android/docviewer/mobi/ModeChangeListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->modeChangeListener:Lcom/amazon/android/docviewer/mobi/ModeChangeListener;

    return-void
.end method

.method public setNavigationHistoryManager(Lcom/amazon/android/docviewer/INavigationHistoryManager;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    return-void
.end method

.method public setReplicaViewNavigator(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_replicaViewNavigator:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    return-void
.end method

.method setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->clearPageCountCache()V

    .line 514
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V

    return-void
.end method

.method public setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->m_currentViewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->populateStartPageFromLPR()V

    return-void

    .line 284
    :cond_1
    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v1, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p1

    .line 287
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobiDocFragment navigator should not be null !"

    .line 288
    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 294
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->initialize()V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 296
    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    const-string v4, "New View Mode initialization failed"

    invoke-static {v2, v3, v4, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->setOrientation(I)V

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V

    .line 307
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->modeChangeListener:Lcom/amazon/android/docviewer/mobi/ModeChangeListener;

    if-eqz p1, :cond_5

    .line 308
    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/ModeChangeListener;->onDocViewerModeChanged(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    :cond_5
    return-void
.end method
