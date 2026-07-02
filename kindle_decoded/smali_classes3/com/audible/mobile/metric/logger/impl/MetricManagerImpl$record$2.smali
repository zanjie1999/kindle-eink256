.class public final Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;
.super Ljava/lang/Object;
.source "MetricManagerImpl.kt"

# interfaces
.implements Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $metric:Lcom/audible/mobile/metric/domain/DurationMetric;


# direct methods
.method constructor <init>(Lcom/audible/mobile/metric/domain/DurationMetric;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;->$metric:Lcom/audible/mobile/metric/domain/DurationMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/metric/logger/FilterableMetricLogger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;->$metric:Lcom/audible/mobile/metric/domain/DurationMetric;

    invoke-interface {p1, v0}, Lcom/audible/mobile/metric/logger/MetricFilter;->supportsMetric(Lcom/audible/mobile/metric/domain/DurationMetric;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;->$metric:Lcom/audible/mobile/metric/domain/DurationMetric;

    invoke-interface {p1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    :cond_0
    return-void
.end method
