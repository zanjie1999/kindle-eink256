.class public final Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;
.super Ljava/lang/Object;
.source "KrxMetricLogger.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetricLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final threadIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private final timerMetricKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final traceEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->timerMetricKeyMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadIdMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->traceEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "kindleReaderSdk can\'t be null"

    .line 103
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 108
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 109
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v1, "metricsManager can\'t be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    const-string v1, "threadPoolManager can\'t be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    const-string v1, "applicationManager can\'t be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    const-string v1, "readerManager can\'t be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->traceEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->traceEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 52
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Ljava/util/Map;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getAdditionalKeyValuePairs()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;J)Ljava/util/Map;
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getTimerMetricsMap(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private addNlnStatus(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "NlnStatus"

    if-nez v0, :cond_0

    .line 486
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No book opened. NLN status is unknown."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;->UNKNOWN:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 499
    :cond_0
    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    if-eq v2, v0, :cond_1

    .line 500
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No book opened. NLN status is disabled."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;->NLN_DISABLED:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "NLN feature is not turned on. NLN statis is disabled."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;->NLN_DISABLED:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isAccessibilityOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Accessibility is turned on. NLN statis is disabled."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;->NLN_DISABLED:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 519
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;->NLN_ENABLED:Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$NlnStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endTrace()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->traceEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method private getAdditionalKeyValuePairs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->addNlnStatus(Ljava/util/Map;)V

    return-object v0
.end method

.method private getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimerMetricsMap(J)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private isNullMetricValue(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 339
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "MetricValue can\'t be null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reportCounterMetricInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    new-instance v1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$1;-><init>(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private reportTimerMetricInternal(Ljava/lang/String;J)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    new-instance v1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger$2;-><init>(Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private startTimerMetricInternal(Ljava/lang/String;J)V
    .locals 3

    .line 393
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Starting metric timer [%s] with start time [%s]"

    invoke-interface {v0, v2, p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->timerMetricKeyMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs startTrace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->traceEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private stopTimerMetricInternal(Ljava/lang/String;JJ)V
    .locals 4

    .line 411
    sget-object v0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Stopping metric timer [%s] with start time [%s] and stop time [%s]"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-gtz v0, :cond_0

    .line 414
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Timer log is equal or less than zero! Dropping this log."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_0
    sget-object p2, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Reporting metric timer [%s] with time [%s]"

    invoke-interface {p2, v0, p1, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0, p1, p4, p5}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->reportTimerMetricInternal(Ljava/lang/String;J)V

    return-void
.end method

.method private static traceEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 288
    sget-object p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Context can\'t be null!"

    invoke-interface {p0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$bool;->is_release_build:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 294
    sget-object p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tracing is not available in RELEASE build!"

    invoke-interface {p0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return v0

    .line 298
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge p0, v1, :cond_2

    .line 299
    sget-object p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tracing is not available in device api < 18"

    invoke-interface {p0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return v0

    .line 303
    :cond_2
    sget-object p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Tracing is enabled!"

    invoke-interface {p0, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->isNullMetricValue(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->reportCounterMetricInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 4

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 226
    iget-object p2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadIdMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->startTrace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->startTimerMetricInternal(Ljava/lang/String;J)V

    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->startTimerMetricInternal(Ljava/lang/String;J)V

    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 8

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->timerMetricKeyMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 253
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No start time found! Method startSynchronousTimerMetric must be called first."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 260
    :cond_1
    iget-object p2, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->threadIdMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_2

    .line 262
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No start thread id found! Method startSynchronousTimerMetric must be called first."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 265
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 267
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p2, v6, v2

    if-eqz p2, :cond_3

    .line 268
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Thread mismatch! Stopping thread is different from that of starting call. Ignoring! "

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 272
    :cond_3
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->endTrace()V

    .line 273
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->stopTimerMetricInternal(Ljava/lang/String;JJ)V

    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 6

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->getCombinedKey(Lcom/audible/hushpuppy/common/metric/IMetric$IMetricKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->timerMetricKeyMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 202
    sget-object p1, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No start time found! Method startSynchronousTimerMetric must be called first."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/common/metric/KrxMetricLogger;->stopTimerMetricInternal(Ljava/lang/String;JJ)V

    return-void
.end method
