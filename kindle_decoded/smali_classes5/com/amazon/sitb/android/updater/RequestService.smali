.class public Lcom/amazon/sitb/android/updater/RequestService;
.super Ljava/lang/Object;
.source "RequestService.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private attemptMetric:Lcom/amazon/sitb/android/Metric;

.field private failureMetric:Lcom/amazon/sitb/android/Metric;

.field private metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private name:Ljava/lang/String;

.field private pendingRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private requestExecutorService:Lcom/amazon/sitb/android/updater/RequestExecutorService;

.field private successfulMetric:Lcom/amazon/sitb/android/Metric;

.field private timeout:J

.field private timerMetric:Lcom/amazon/sitb/android/Metric;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/RequestService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/RequestService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/updater/RequestExecutorService;Lcom/amazon/sitb/android/metrics/MetricsService;Ljava/lang/String;JLcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService;->requestExecutorService:Lcom/amazon/sitb/android/updater/RequestExecutorService;

    .line 42
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/RequestService;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 43
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/RequestService;->name:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/amazon/sitb/android/updater/RequestService;->timerMetric:Lcom/amazon/sitb/android/Metric;

    .line 45
    iput-object p7, p0, Lcom/amazon/sitb/android/updater/RequestService;->attemptMetric:Lcom/amazon/sitb/android/Metric;

    .line 46
    iput-object p8, p0, Lcom/amazon/sitb/android/updater/RequestService;->successfulMetric:Lcom/amazon/sitb/android/Metric;

    .line 47
    iput-object p9, p0, Lcom/amazon/sitb/android/updater/RequestService;->failureMetric:Lcom/amazon/sitb/android/Metric;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService;->pendingRequestMap:Ljava/util/Map;

    .line 49
    iput-wide p4, p0, Lcom/amazon/sitb/android/updater/RequestService;->timeout:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/updater/RequestService;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/updater/RequestService;->removePendingRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/updater/RequestService;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/RequestService;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/sitb/android/updater/RequestService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/RequestService;->successfulMetric:Lcom/amazon/sitb/android/Metric;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/metrics/MetricsService;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/RequestService;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/RequestService;->failureMetric:Lcom/amazon/sitb/android/Metric;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/sitb/android/updater/RequestService;->timerMetric:Lcom/amazon/sitb/android/Metric;

    return-object p0
.end method

.method private isRequestPending(Ljava/lang/String;)Z
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService;->pendingRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 109
    iget-wide v3, p0, Lcom/amazon/sitb/android/updater/RequestService;->timeout:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private markRequestPending(Ljava/lang/String;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService;->pendingRequestMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized removePendingRequest(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService;->pendingRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized testAndMarkRequestPending(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/updater/RequestService;->isRequestPending(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/updater/RequestService;->markRequestPending(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return v1

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/sitb/android/updater/RequestService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "There is a pending request for ASIN %s, NOT making a new request"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public makeRequest(Ljava/lang/String;I)V
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/updater/RequestService;->testAndMarkRequestPending(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->createMetricEvent()Lcom/amazon/sitb/android/metrics/MetricEvent;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/RequestService;->timerMetric:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->startMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 59
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/RequestService;->attemptMetric:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 60
    sget-object v1, Lcom/amazon/sitb/android/updater/RequestService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/updater/RequestService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService;->requestExecutorService:Lcom/amazon/sitb/android/updater/RequestExecutorService;

    new-instance v2, Lcom/amazon/sitb/android/updater/RequestService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/sitb/android/updater/RequestService$1;-><init>(Lcom/amazon/sitb/android/updater/RequestService;Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/amazon/sitb/android/updater/RequestExecutorService;->execute(Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V

    :cond_0
    return-void
.end method
