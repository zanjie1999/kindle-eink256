.class public Lcom/amazon/kindle/performance/PerformanceLogger;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"


# static fields
.field private static final DELTA_EVENT_SUFFIX:Ljava/lang/String; = "-delta"

.field private static final ENABLE_PERFORMANCE_LOGS:Z = true

.field private static final EVENT_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/amazon/kindle/performance/PerformanceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/amazon/kindle/performance/PerformanceLogger; = null

.field private static final PERF_MARKER_TAG:Ljava/lang/String; = "PERF MARKER"

.field private static final UPLOAD_TO_MOBILE_ANAYLITICS:Z = false

.field private static final WARNING_TAG:Ljava/lang/String;


# instance fields
.field private final STARTED_EVENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/performance/KindlePerformanceConstants;",
            "Lcom/amazon/kindle/performance/PerformanceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/performance/PerformanceLogger;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->WARNING_TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->EVENT_QUEUE:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/performance/PerformanceLogger;->STARTED_EVENTS:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/performance/PerformanceLogger$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/performance/PerformanceLogger$1;-><init>(Lcom/amazon/kindle/performance/PerformanceLogger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->EVENT_QUEUE:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/performance/PerformanceLogger;Lcom/amazon/kindle/performance/PerformanceEvent;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/performance/PerformanceLogger;->addEvent(Lcom/amazon/kindle/performance/PerformanceEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->WARNING_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addEvent(Lcom/amazon/kindle/performance/PerformanceEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->isStart()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/amazon/kindle/performance/PerformanceLogger;->STARTED_EVENTS:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/amazon/kindle/performance/PerformanceLogger;->WARNING_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Not adding duplicate start %s event as the previous one was ended."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceLogger;->STARTED_EVENTS:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/amazon/kindle/performance/PerformanceLogger;->printEventToLog(Lcom/amazon/kindle/performance/PerformanceEvent;)V

    return v2

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/performance/PerformanceLogger;->STARTED_EVENTS:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    sget-object v1, Lcom/amazon/kindle/performance/PerformanceLogger;->WARNING_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Found an %s end event without a start!"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 110
    :cond_3
    invoke-static {p1}, Lcom/amazon/kindle/performance/PerformanceLogger;->printEventToLog(Lcom/amazon/kindle/performance/PerformanceEvent;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceLogger;->STARTED_EVENTS:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/performance/PerformanceEvent;

    .line 112
    invoke-static {v0, p1}, Lcom/amazon/kindle/performance/PerformanceLogger;->calculatePerformanceDelta(Lcom/amazon/kindle/performance/PerformanceEvent;Lcom/amazon/kindle/performance/PerformanceEvent;)V

    return v2
.end method

.method static calculatePerformanceDelta(Lcom/amazon/kindle/performance/PerformanceEvent;Lcom/amazon/kindle/performance/PerformanceEvent;)V
    .locals 5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-delta"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->getTimeStamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    invoke-static {v0, v1}, Lcom/amazon/kindle/performance/PerformanceLogger;->formatMetadata(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PERF MARKER"

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static formatMetadata(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, ","

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static initIfNeeded()V
    .locals 2

    .line 66
    sget-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->INSTANCE:Lcom/amazon/kindle/performance/PerformanceLogger;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/amazon/kindle/performance/PerformanceLogger;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/performance/PerformanceLogger;->INSTANCE:Lcom/amazon/kindle/performance/PerformanceLogger;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/amazon/kindle/performance/PerformanceLogger;

    invoke-direct {v1}, Lcom/amazon/kindle/performance/PerformanceLogger;-><init>()V

    sput-object v1, Lcom/amazon/kindle/performance/PerformanceLogger;->INSTANCE:Lcom/amazon/kindle/performance/PerformanceLogger;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static final logPerformanceEvent(Lcom/amazon/kindle/performance/PerformanceEvent;)Z
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/kindle/performance/PerformanceLogger;->EVENT_QUEUE:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    .line 58
    invoke-static {}, Lcom/amazon/kindle/performance/PerformanceLogger;->initIfNeeded()V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static printEventToLog(Lcom/amazon/kindle/performance/PerformanceEvent;)V
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetric()Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->isStart()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-start"

    goto :goto_0

    :cond_0
    const-string v1, "-end"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/PerformanceEvent;->getMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/performance/PerformanceLogger;->formatMetadata(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PERF MARKER"

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
