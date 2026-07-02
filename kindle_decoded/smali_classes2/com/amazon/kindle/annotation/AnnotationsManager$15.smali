.class Lcom/amazon/kindle/annotation/AnnotationsManager$15;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->syncJournalAsync(Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/amazon/foundation/internal/IBooleanCallback;

.field final synthetic val$metricName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    .line 921
    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$15;->val$metricName:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$15;->val$callback:Lcom/amazon/foundation/internal/IBooleanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 5

    .line 924
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationsManager;->METRICS_CLASS:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$15;->val$metricName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p1, :cond_0

    const-string v3, "Success"

    goto :goto_0

    :cond_0
    const-string v3, "Error"

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s:%s"

    .line 925
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 924
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 927
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$15;->val$callback:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-eqz v0, :cond_2

    .line 928
    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    :cond_2
    return-void
.end method
