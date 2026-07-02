.class public final Lcom/amazon/kindle/download/okhttp/OkHttpClientProviderKt;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.kt"


# direct methods
.method public static final synthetic access$withTimingEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProviderKt;->withTimingEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withTimingEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/krx/metrics/MetricsData;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->startTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 31
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->stopTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-object p2
.end method
