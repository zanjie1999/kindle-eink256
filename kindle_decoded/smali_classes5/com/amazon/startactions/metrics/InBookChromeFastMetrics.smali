.class public Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;
.super Ljava/lang/Object;
.source "InBookChromeFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;,
        Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;,
        Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;
    }
.end annotation


# static fields
.field private static final SCHEMA_NAME:Ljava/lang/String; = "reader_chrome_instrumentation"

.field private static final SCHEMA_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.metrics.InBookChromeFastMetrics"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->value:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Emit Metric: %s , %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reader_chrome_instrumentation"

    .line 57
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->CONTEXT:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    iget-object v2, v2, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->value:Ljava/lang/String;

    iget-object p0, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->value:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 59
    sget-object p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->ACTION:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    iget-object p0, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->value:Ljava/lang/String;

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 62
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    const-string v0, "InBook Chrome FastMetrics threw an exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    :cond_0
    sget-object p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->TAG:Ljava/lang/String;

    const-string p1, "InBook Chrome FastMetrics error, fastmetrics not available"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
