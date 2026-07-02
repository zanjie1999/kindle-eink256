.class public abstract Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;
.super Ljava/lang/Object;
.source "AbstractLatencyMetrics.java"


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field private final context:Ljava/lang/String;

.field private final metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

.field private final metricsTimerKey:Ljava/lang/String;

.field private final shareType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->context:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->shareType:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->generateRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsTimerKey:Ljava/lang/String;

    return-void
.end method

.method private generateRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsTimerKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->abortTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsTimerKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->metricsTimerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->context:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->shareType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->stopTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
