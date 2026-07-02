.class public abstract Lcom/amazon/sitb/android/metrics/MeasuredTask;
.super Ljava/lang/Object;
.source "MeasuredTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final attemptMetric:Lcom/amazon/sitb/android/Metric;

.field private final failedMetric:Lcom/amazon/sitb/android/Metric;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final name:Ljava/lang/String;

.field private final notRunMetric:Lcom/amazon/sitb/android/Metric;

.field private final reportingClass:Ljava/lang/Class;

.field private final successMetric:Lcom/amazon/sitb/android/Metric;

.field private final timerMetric:Lcom/amazon/sitb/android/Metric;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/metrics/MeasuredTask;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->reportingClass:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 37
    iput-object p4, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->timerMetric:Lcom/amazon/sitb/android/Metric;

    .line 38
    iput-object p5, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->attemptMetric:Lcom/amazon/sitb/android/Metric;

    .line 39
    iput-object p6, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->successMetric:Lcom/amazon/sitb/android/Metric;

    .line 40
    iput-object p7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->failedMetric:Lcom/amazon/sitb/android/Metric;

    .line 41
    iput-object p8, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->notRunMetric:Lcom/amazon/sitb/android/Metric;

    return-void
.end method

.method private addCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :cond_0
    return-void
.end method

.method private startTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/metrics/MetricsService;->startMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :cond_0
    return-void
.end method

.method private stopTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/metrics/MetricsService;->stopMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/metrics/MetricEvent;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation
.end method

.method public execute()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, " finished in "

    const-string v2, "Task "

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 56
    iget-object v5, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v5}, Lcom/amazon/sitb/android/metrics/MetricsService;->createMetricEvent()Lcom/amazon/sitb/android/metrics/MetricEvent;

    move-result-object v5

    .line 59
    :try_start_0
    iget-object v6, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->timerMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v6}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->startTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 60
    iget-object v6, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->attemptMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v6}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->addCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 61
    sget-object v6, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Object;

    move-result-object v6

    .line 63
    sget-object v7, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " completed successfully"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 64
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->successMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v7}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->addCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    :try_end_0
    .catch Lcom/amazon/sitb/android/metrics/NotRunException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->timerMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v7}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->stopTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 85
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v8, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->reportingClass:Ljava/lang/Class;

    invoke-virtual {v7, v5, v8}, Lcom/amazon/sitb/android/metrics/MetricsService;->recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V

    .line 86
    sget-object v5, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-object v6

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v6

    .line 77
    :try_start_1
    sget-object v7, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->failedMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v7}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->addCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 80
    throw v6

    :catch_1
    move-exception v6

    .line 70
    sget-object v7, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " did not run: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 71
    iget-object v6, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->notRunMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v6}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->addCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    .line 84
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->timerMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v7}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->stopTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 85
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v8, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->reportingClass:Ljava/lang/Class;

    invoke-virtual {v7, v5, v8}, Lcom/amazon/sitb/android/metrics/MetricsService;->recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V

    .line 86
    sget-object v5, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 84
    :goto_1
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->timerMetric:Lcom/amazon/sitb/android/Metric;

    invoke-direct {p0, v5, v7}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->stopTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 85
    iget-object v7, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v8, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->reportingClass:Ljava/lang/Class;

    invoke-virtual {v7, v5, v8}, Lcom/amazon/sitb/android/metrics/MetricsService;->recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V

    .line 86
    sget-object v5, Lcom/amazon/sitb/android/metrics/MeasuredTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/metrics/MeasuredTask;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 87
    throw v6
.end method
