.class public final Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
.source "CounterMetricImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder<",
        "Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;",
        "Lcom/audible/mobile/metric/domain/CounterMetric;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    const/4 p1, 0x1

    .line 84
    iput p1, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->count:I

    return p0
.end method


# virtual methods
.method public build()Lcom/audible/mobile/metric/domain/CounterMetric;
    .locals 2

    .line 113
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;)V

    return-object v0
.end method
