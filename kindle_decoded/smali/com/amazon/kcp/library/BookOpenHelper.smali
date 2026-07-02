.class public Lcom/amazon/kcp/library/BookOpenHelper;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;,
        Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static haveOpenedABookSinceAppStart:Z

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-class v0, Lcom/amazon/kcp/library/BookOpenHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/BookOpenHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const/4 v0, 0x0

    .line 126
    sput-boolean v0, Lcom/amazon/kcp/library/BookOpenHelper;->haveOpenedABookSinceAppStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 75
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 75
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->attemptToOpenBook(Landroid/app/Activity;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void
.end method

.method private static attemptToOpenBook(Landroid/app/Activity;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 2

    .line 373
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "ConnectionError"

    invoke-interface {p0, p2, p1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static downloadAndOpen(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 2

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 150
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Lcom/amazon/kindle/model/content/IListableBook;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string/jumbo p1, "start_page"

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method private static getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 698
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method private static getBookOpenType(ZJ)Lcom/amazon/kindle/performance/KindlePerformanceConstants;
    .locals 6

    .line 769
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getAppStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v4, 0xdac

    sub-long/2addr p1, v4

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 776
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 778
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUKEWARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    return-object p0

    .line 780
    :cond_2
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->WARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 702
    sget-object v0, Lcom/amazon/kcp/library/BookOpenHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 183
    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 189
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    .line 196
    invoke-static {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 197
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    .line 198
    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static {v6}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 203
    invoke-interface {v3, p1, v2, v6, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-nez v3, :cond_5

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v3

    .line 210
    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "ConnectionError"

    invoke-interface {v3, v6, v5}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 215
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->areReferralsAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 216
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v3

    new-instance v6, Lcom/amazon/kcp/library/BookOpenHelper$1;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/library/BookOpenHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-interface {v3, v6}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    move-object v6, p3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    if-nez p5, :cond_4

    .line 228
    invoke-static {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    .line 229
    new-instance v6, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v6, p1, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 230
    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 231
    invoke-static {v3, v6, v2}, Lcom/amazon/kcp/library/BookOpenHelper;->startContentOpenMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Lcom/amazon/kindle/model/content/IBookID;Z)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v3

    new-array v7, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 232
    sget-object v8, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v8, v7, v4

    const-string/jumbo v8, "willPerformTodoSync"

    invoke-virtual {v3, v8, v6, v7}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 234
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v3

    move-object v6, p3

    invoke-static {v3, p1, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->syncAndDownload(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    :goto_1
    move-object v6, p3

    :goto_2
    const/4 v5, 0x0

    :goto_3
    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_4

    :cond_5
    move-object v4, p4

    move-object/from16 v5, p6

    .line 239
    invoke-static {v3, p0, p4, v5}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v6, p3

    const/4 v5, 0x0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v6, p5

    .line 243
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static openBook(Landroid/app/Activity;Ljava/lang/String;J)Z
    .locals 9

    .line 706
    sget-object v0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openBook method start"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    .line 709
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 711
    sget-boolean v2, Lcom/amazon/kcp/library/BookOpenHelper;->haveOpenedABookSinceAppStart:Z

    invoke-static {v2, p2, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->getBookOpenType(ZJ)Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 714
    sget-object p3, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating book open event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    if-ne p2, p3, :cond_0

    .line 717
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object p3

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getAppStartTime()J

    move-result-wide v3

    const-string v5, "COLD"

    invoke-interface {p3, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_0
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUKEWARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    if-ne p2, p3, :cond_1

    .line 719
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object p3

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LUKEWARM"

    invoke-interface {p3, v2, v3}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object p3

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WARM"

    invoke-interface {p3, v2, v3}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_2
    sget-object p3, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    const-string v2, "Book open type is null"

    invoke-static {p3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p3, "LibraryService.getContentMetadata()"

    const/4 v7, 0x1

    .line 729
    invoke-static {p3, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 730
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v0, p1, v2, v8}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 731
    invoke-static {p3, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v2, :cond_4

    .line 734
    invoke-virtual {v2, v7}, Lcom/amazon/kindle/content/ContentMetadata;->setOpenForReading(Z)V

    .line 736
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getLocalContentFactory()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 737
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 740
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    .line 741
    invoke-static {p1, p3}, Lcom/amazon/kcp/util/Utils;->shouldClosePreviousBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v5

    const-string p1, "ReaderController.openReader() - async call"

    .line 743
    invoke-static {p1, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 744
    new-instance v3, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v3}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCK_CALLING_THREAD:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    move-object v2, p3

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    .line 746
    invoke-static {p1, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string p0, "CMSCallback.reportOpenMetrics()"

    .line 748
    invoke-static {p0, v7}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 749
    invoke-static {p2, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->reportOpenMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 750
    invoke-static {p0, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 752
    sget-boolean p0, Lcom/amazon/kcp/library/BookOpenHelper;->haveOpenedABookSinceAppStart:Z

    if-nez p0, :cond_3

    .line 753
    sput-boolean v7, Lcom/amazon/kcp/library/BookOpenHelper;->haveOpenedABookSinceAppStart:Z

    :cond_3
    return v7

    .line 759
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 760
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find local item for item "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_5
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    const-string p2, "Could not find local item for an item"

    invoke-static {p0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    const-string p2, "BookOpenFailure"

    invoke-interface {p0, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p0

    invoke-interface {p0, p1, v7}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return v8
.end method

.method public static openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 8

    .line 261
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 266
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 273
    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 274
    invoke-interface {v2, p1, v0, v4, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {p0, v0, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->attemptToOpenBook(Landroid/app/Activity;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void

    .line 286
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void

    .line 292
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v3, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->START_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 294
    new-instance v5, Lcom/amazon/kcp/library/BookOpenHelper$2;

    invoke-direct {v5, p1, p0, p2}, Lcom/amazon/kcp/library/BookOpenHelper$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 327
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$3;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/BookOpenHelper$3;-><init>(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/Activity;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 349
    new-instance p0, Lcom/amazon/kcp/library/BookOpenHelper$4;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/BookOpenHelper$4;-><init>(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 359
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openLastReadBook(Landroid/app/Activity;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
        }
    .end annotation

    .line 664
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 665
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalBookItem(Landroid/app/Activity;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V

    return-void

    .line 668
    :cond_0
    new-instance p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;

    invoke-direct {p0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;-><init>()V

    throw p0
.end method

.method public static openLocal(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 566
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 570
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 573
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    if-nez v1, :cond_2

    if-nez v4, :cond_2

    .line 580
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 581
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    .line 582
    instance-of v7, v4, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 583
    new-instance p0, Lcom/amazon/kcp/library/BookOpenHelper$5;

    invoke-direct {p0, v6}, Lcom/amazon/kcp/library/BookOpenHelper$5;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {v4, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "Returning, since new book %s same as current book..."

    .line 598
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v5

    .line 604
    :cond_2
    invoke-virtual {p2, v1}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->setClosePrevious(Z)V

    .line 605
    invoke-static {p0, v0, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalBookItem(Landroid/app/Activity;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V

    return-object v5

    .line 608
    :cond_3
    new-instance p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;

    invoke-direct {p0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;-><init>()V

    throw p0
.end method

.method private static openLocalBookItem(Landroid/app/Activity;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    .locals 7

    .line 676
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    .line 678
    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getStartPage()Lcom/amazon/kcp/reader/IReaderController$StartPage;

    move-result-object v3

    .line 679
    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getOpenReaderMode()Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    move-result-object v4

    .line 680
    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getClosePrevious()Z

    move-result v5

    move-object v2, p1

    move-object v6, p0

    .line 677
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    return-void
.end method

.method public static openLocalOrArchived(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 3

    .line 632
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocal(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 640
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 641
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getStartPage()Lcom/amazon/kcp/reader/IReaderController$StartPage;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;
    .locals 6

    .line 466
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    sget-object p3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->startContentOpenMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Lcom/amazon/kindle/model/content/IBookID;Z)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 471
    invoke-static {p1, p0, p2, p4}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 475
    :cond_0
    sget-object p4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v1

    invoke-static {p4, v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->startContentOpenMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Lcom/amazon/kindle/model/content/IBookID;Z)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    if-eqz p3, :cond_1

    .line 478
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v4, 0x1

    move-object v2, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 480
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    sget-object p3, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 p4, 0x1

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openMobi(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 527
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-static {}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const-string v1, "Can\'t open book"

    if-nez v0, :cond_0

    .line 530
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t open book metadata is null for filename "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 534
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t open book ILocalBookItem is null for filename "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 538
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 542
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p0

    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    sget-object v1, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V

    return-void
.end method

.method public static openPdf(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const-string v2, "Can\'t open pdf"

    if-nez v1, :cond_0

    .line 504
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t open pdf metadata is null for filename "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 507
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    if-nez v3, :cond_1

    .line 508
    sget-object p0, Lcom/amazon/kcp/library/BookOpenHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t open pdf ILocalBookItem is null for filename "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 512
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 516
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v3}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v5, 0x1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    return-void
.end method

.method private static openSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 6

    .line 400
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 403
    invoke-interface {v0, p1, v2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "ConnectionError"

    invoke-interface {p0, p2, p1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 414
    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    .line 415
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p1

    .line 414
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    :cond_2
    new-instance p1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    invoke-static {v0, p0, p1, v2, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalOrRemoteAsin(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static reportOpenMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 799
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Library"

    const-string v2, "Opened"

    .line 802
    invoke-static {v1, v2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 804
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "CMSCallback"

    if-ne p0, v0, :cond_1

    .line 806
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    const-string v0, "cold_book_open"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 815
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COLD_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/Utils;->addCounterMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 817
    :cond_1
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUKEWARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    if-ne p0, v0, :cond_2

    .line 819
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    const-string/jumbo v0, "lukewarm_book_open"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 828
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUKEWARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/Utils;->addCounterMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 830
    :cond_2
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->WARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    if-ne p0, v0, :cond_3

    .line 832
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    const-string/jumbo v0, "warm_book_open"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 841
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->WARM_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/Utils;->addCounterMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static startContentOpenMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsType;Lcom/amazon/kindle/model/content/IBookID;Z)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 3

    .line 788
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "storeOrEndActions"

    .line 789
    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-object v0
.end method

.method public static syncAndDownload(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 693
    invoke-static {p2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 694
    :goto_0
    new-instance p2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_ITEM:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result p0

    return p0
.end method
