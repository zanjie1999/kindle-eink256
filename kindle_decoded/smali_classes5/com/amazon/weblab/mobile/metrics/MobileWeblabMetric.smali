.class public Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;
.super Ljava/lang/Object;
.source "MobileWeblabMetric.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;


# static fields
.field private static final MAX_SIZE_EXTRA_MESSAGE:I = 0x190


# instance fields
.field private mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricEvent;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "metricEvent cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMetric()Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-object v0
.end method

.method public bridge synthetic getMetric()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->getMetric()Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v0

    return-object v0
.end method

.method public increment(Ljava/lang/String;D)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 52
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "increment: name=%s, value=%f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    int-to-double v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "log: name=%s, value=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    int-to-double v1, p3

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 64
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x190

    if-le v0, v2, :cond_1

    .line 65
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    const-string v2, "ErrorMessage"

    invoke-interface {v0, v2, p2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p1

    const-string p1, "logError: name=%s, value=%d "

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    return-void
.end method

.method public logTime(Ljava/lang/String;D)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetric;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "logTime: name=%s, value=%f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    return-void
.end method
