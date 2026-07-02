.class public Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;
.super Ljava/lang/Object;
.source "PageNumberCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;
    }
.end annotation


# static fields
.field private static final EXECUTOR_DELAY_IN_SCHEDULING:J = 0x1f4L

.field private static final EXECUTOR_SHUTDOWN_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDocument:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFutureRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

.field private mSettings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mDocument:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    .line 62
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mFutureRunnables:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;I)Ljava/util/Map;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->computePageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private computePageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->getKRFDocViewerForNavigation()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v1

    .line 98
    monitor-enter v1

    .line 99
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->gotoPageStartingWith(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Z

    .line 100
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getCurrentPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object p1

    const/4 v2, 0x1

    .line 102
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getLastPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v3

    if-ge v3, p2, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getFirstPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->nextPage()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method private getKRFDocViewerForNavigation()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mDocument:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mSettings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mSettings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->applySettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    .line 130
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->TAG:Ljava/lang/String;

    const-string v1, "PageNumberCalculator is still not terminated even after waiting"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to shutdown Page Number Calculator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mNavigationalKRFViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->delete()V

    .line 142
    :cond_2
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mDocument:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    return-void
.end method

.method public schedulePageNumberCalculation(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "I",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mFutureRunnables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mFutureRunnables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 81
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;-><init>(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/foundation/internal/IObjectCallback;)V

    .line 83
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mFutureRunnables:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 p2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->mSettings:Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;

    return-void
.end method
