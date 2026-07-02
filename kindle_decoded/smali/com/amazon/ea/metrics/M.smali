.class public final Lcom/amazon/ea/metrics/M;
.super Ljava/lang/Object;
.source "M.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/metrics/M$MetricsStackTrace;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTRIBUTES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final DEQUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Deque<",
            "Lcom/amazon/ea/metrics/Profiler;",
            ">;>;"
        }
    .end annotation
.end field

.field private static EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService; = null

.field private static final SAVED_METRIC_DIR:Ljava/lang/String;

.field private static final SAVED_METRIC_FILENAME_REGEX:Ljava/lang/String; = "^.*_metric\\.tmp$"

.field private static final SAVED_METRIC_FILENAME_SUFFIX:Ljava/lang/String; = "_metric.tmp"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.metrics.M"

.field private static endTime:J

.field public static session:Lcom/amazon/ea/metrics/Profiler;

.field private static startTime:J

.field private static uiWasDisplayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "endactions"

    const-string/jumbo v2, "metrics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/metrics/M;->SAVED_METRIC_DIR:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/metrics/M;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 52
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/amazon/ea/metrics/M$1;

    invoke-direct {v0}, Lcom/amazon/ea/metrics/M$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ea/metrics/Profiler;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->pushChild(Lcom/amazon/ea/metrics/Profiler;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/amazon/ea/metrics/M;->getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/io/File;
    .locals 1

    .line 30
    invoke-static {}, Lcom/amazon/ea/metrics/M;->getSavedMetricDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 93
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to log custom attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on an empty metrics stack"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/amazon/ea/metrics/M$MetricsStackTrace;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>(Lcom/amazon/ea/metrics/M$1;)V

    invoke-static {v0, p0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static addCount(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-static {p0, v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;I)V

    return-void
.end method

.method public static addCount(Ljava/lang/String;I)V
    .locals 3

    .line 122
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p0, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to log count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " on an empty metrics stack"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/amazon/ea/metrics/M$MetricsStackTrace;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>(Lcom/amazon/ea/metrics/M$1;)V

    invoke-static {v0, p0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static addError(Ljava/lang/String;)V
    .locals 3

    .line 138
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Lcom/amazon/ea/metrics/Profiler;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to log error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on an empty metrics stack"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/amazon/ea/metrics/M$MetricsStackTrace;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>(Lcom/amazon/ea/metrics/M$1;)V

    invoke-static {v0, p0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;",
            ")",
            "Lcom/amazon/kindle/krx/application/IAsyncTask<",
            "TT;>;"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/amazon/ea/metrics/M;->peek()Lcom/amazon/ea/metrics/Profiler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ea/metrics/Profiler;->createChild()Lcom/amazon/ea/metrics/Profiler;

    move-result-object v0

    .line 198
    :goto_0
    new-instance v1, Lcom/amazon/ea/metrics/M$2;

    invoke-direct {v1, v0, p0, p1}, Lcom/amazon/ea/metrics/M$2;-><init>(Lcom/amazon/ea/metrics/Profiler;Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)V

    return-object v1
.end method

.method public static asyncWithMetrics(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    .line 228
    invoke-static {}, Lcom/amazon/ea/metrics/M;->peek()Lcom/amazon/ea/metrics/Profiler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ea/metrics/Profiler;->createChild()Lcom/amazon/ea/metrics/Profiler;

    move-result-object v0

    .line 230
    :goto_0
    new-instance v1, Lcom/amazon/ea/metrics/M$3;

    invoke-direct {v1, v0, p0}, Lcom/amazon/ea/metrics/M$3;-><init>(Lcom/amazon/ea/metrics/Profiler;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public static closeSavedSession()V
    .locals 2

    .line 484
    sget-object v0, Lcom/amazon/ea/metrics/M;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/ea/metrics/M$6;

    invoke-direct {v1}, Lcom/amazon/ea/metrics/M$6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static closeSession()V
    .locals 4

    .line 251
    sget-boolean v0, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v0}, Lcom/amazon/ea/metrics/Profiler;->close()V

    .line 256
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v0, v0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->deleteSessionFromDisk(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 258
    sput-boolean v0, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    return-void
.end method

.method public static condSet(ZLjava/lang/String;)Z
    .locals 0

    .line 271
    invoke-static {p1, p0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    return p0
.end method

.method private static deleteSessionFromDisk(Ljava/lang/String;)V
    .locals 2

    .line 463
    sget-object v0, Lcom/amazon/ea/metrics/M;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/ea/metrics/M$5;

    invoke-direct {v1, p0}, Lcom/amazon/ea/metrics/M$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedMetricDirectory()Ljava/io/File;
    .locals 3

    .line 518
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/amazon/ea/metrics/M;->SAVED_METRIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private static getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 531
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/ea/metrics/M;->getSavedMetricDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_metric.tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initSession()V
    .locals 3

    .line 307
    new-instance v0, Lcom/amazon/ea/metrics/Profiler;

    invoke-static {}, Lcom/amazon/ea/metrics/M;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    sput-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "FromDisk"

    const/4 v2, 0x0

    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method public static onDisplay()V
    .locals 3

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ea/metrics/M;->startTime:J

    .line 316
    sget-boolean v2, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    if-nez v2, :cond_0

    .line 317
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartTime"

    invoke-virtual {v2, v1, v0}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 319
    sput-boolean v0, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    return-void
.end method

.method public static onHide()V
    .locals 5

    .line 326
    sget-boolean v0, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ea/metrics/M;->endTime:J

    .line 328
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EndTime"

    invoke-virtual {v2, v1, v0}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    sget-wide v1, Lcom/amazon/ea/metrics/M;->endTime:J

    sget-wide v3, Lcom/amazon/ea/metrics/M;->startTime:J

    sub-long/2addr v1, v3

    const-string v3, "EndActionsActiveTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->addTimeMillis(Ljava/lang/String;J)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->saveSessionToDisk()V

    return-void
.end method

.method protected static peek()Lcom/amazon/ea/metrics/Profiler;
    .locals 1

    .line 407
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    return-object v0
.end method

.method public static pop()V
    .locals 4

    .line 339
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_1

    .line 341
    sget-object v1, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ea/metrics/Profiler;->close()V

    goto :goto_1

    .line 346
    :cond_1
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/amazon/ea/metrics/M$MetricsStackTrace;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>(Lcom/amazon/ea/metrics/M$1;)V

    const-string v2, "Tried to pop on an empty metrics stack"

    invoke-static {v0, v2, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static push(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 357
    invoke-static {p0, v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;Z)V

    return-void
.end method

.method public static push(Ljava/lang/String;Z)V
    .locals 2

    .line 369
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    :cond_0
    sget-object p1, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Deque;

    new-instance v0, Lcom/amazon/ea/metrics/Profiler;

    invoke-static {}, Lcom/amazon/ea/metrics/M;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/metrics/Profiler;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method private static pushChild(Lcom/amazon/ea/metrics/Profiler;)V
    .locals 1

    .line 418
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized saveSessionToDisk()V
    .locals 5

    const-class v0, Lcom/amazon/ea/metrics/M;

    monitor-enter v0

    .line 426
    :try_start_0
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-nez v1, :cond_0

    .line 427
    sget-object v1, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    const-string v2, "Session is null; cannot save session to disk"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit v0

    return-void

    .line 430
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/amazon/ea/metrics/M;->uiWasDisplayed:Z

    if-nez v1, :cond_2

    .line 431
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    sget-object v1, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    const-string v2, "Ui was not displayed; Will not save endactions session"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :cond_1
    monitor-exit v0

    return-void

    .line 438
    :cond_2
    :try_start_2
    sget-object v1, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 439
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/amazon/ea/metrics/Profiler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_3
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v1}, Lcom/amazon/ea/metrics/Profiler;->setProfilerTime()V

    .line 444
    sget-object v1, Lcom/amazon/ea/metrics/M;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/ea/metrics/M$4;

    invoke-direct {v2}, Lcom/amazon/ea/metrics/M$4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setCount(Ljava/lang/String;I)V
    .locals 3

    .line 383
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEQUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p0, p1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to log count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " on an empty metrics stack"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/amazon/ea/metrics/M$MetricsStackTrace;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/amazon/ea/metrics/M$MetricsStackTrace;-><init>(Lcom/amazon/ea/metrics/M$1;)V

    invoke-static {v0, p0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setDefaultAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 400
    sget-object v0, Lcom/amazon/ea/metrics/M;->DEFAULT_ATTRIBUTES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
