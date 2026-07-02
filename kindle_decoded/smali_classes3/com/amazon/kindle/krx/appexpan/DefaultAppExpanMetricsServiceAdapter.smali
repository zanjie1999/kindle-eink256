.class public Lcom/amazon/kindle/krx/appexpan/DefaultAppExpanMetricsServiceAdapter;
.super Ljava/lang/Object;
.source "DefaultAppExpanMetricsServiceAdapter.java"

# interfaces
.implements Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V
    .locals 3

    .line 17
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v2, "MobileAppExpansionAndroidClient"

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
