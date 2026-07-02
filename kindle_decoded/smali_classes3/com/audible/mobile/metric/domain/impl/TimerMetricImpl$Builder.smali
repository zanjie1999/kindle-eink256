.class public final Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
.source "TimerMetricImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder<",
        "Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;",
        "Lcom/audible/mobile/metric/domain/TimerMetric;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 2

    .line 104
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$1;)V

    return-object v0
.end method
