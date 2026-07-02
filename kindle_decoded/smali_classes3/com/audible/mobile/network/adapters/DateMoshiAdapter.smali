.class public final Lcom/audible/mobile/network/adapters/DateMoshiAdapter;
.super Ljava/lang/Object;
.source "DateMoshiAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateMoshiAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateMoshiAdapter.kt\ncom/audible/mobile/network/adapters/DateMoshiAdapter\n*L\n1#1,58:1\n*E\n"
.end annotation


# instance fields
.field private final dateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method private final initDateFormatter()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 55
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    const-string v0, "Calendar.getInstance().time"

    const-string v1, "Calendar.getInstance()"

    if-eqz p1, :cond_1

    .line 26
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->dateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->initDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v2, "dateFormat.getOrSet { in\u2026ter() }.parse(dateString)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object p1

    .line 32
    :goto_4
    invoke-direct {p0}, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->getLogger()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "failed to deserialize the date {}, date for this title will be set as current time"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance p1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 37
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->AGLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 38
    sget-object v3, Lcom/audible/mobile/metric/logger/AAPSource;->AGLS:Lcom/audible/mobile/metric/logger/AAPSource;

    .line 39
    sget-object v4, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;->DATE_DESERIALIZATION_FAILED:Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    .line 36
    invoke-direct {p1, v2, v3, v4}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 41
    iget-object v2, p0, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toJson(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->dateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/network/adapters/DateMoshiAdapter;->initDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dateFormat.getOrSet { in\u2026ormatter() }.format(date)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
