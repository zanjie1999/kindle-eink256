.class public Lcom/amazon/ea/metrics/SimpleMetricsManager;
.super Ljava/lang/Object;
.source "SimpleMetricsManager.java"


# static fields
.field private static final END_ACTIONS_PREFIX:Ljava/lang/String; = "EndActionsSimple."

.field private static final START_ACTIONS_PREFIX:Ljava/lang/String; = "StartActionsSimple."

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.metrics.SimpleMetricsManager"


# instance fields
.field private final useStartActionsPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/amazon/ea/metrics/SimpleMetricsManager;->useStartActionsPrefix:Z

    return-void
.end method

.method public static getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/ea/metrics/SimpleMetricsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;-><init>(Z)V

    return-object v0
.end method

.method private getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 121
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/amazon/ea/metrics/SimpleMetricsManager;->useStartActionsPrefix:Z

    if-eqz v0, :cond_0

    const-string v0, "StartActionsSimple."

    goto :goto_0

    :cond_0
    const-string v0, "EndActionsSimple."

    :goto_0
    return-object v0
.end method

.method public static getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/ea/metrics/SimpleMetricsManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public reportBooleanMetric(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 92
    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 100
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/amazon/ea/metrics/SimpleMetricsManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Reporting boolean metric: %s:%s:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/amazon/ea/metrics/SimpleMetricsManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Reporting metric: %s:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 72
    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/amazon/ea/metrics/SimpleMetricsManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Reporting timer metric: %s:%s:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
