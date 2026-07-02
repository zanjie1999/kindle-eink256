.class public final Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;
.super Ljava/lang/Object;
.source "FTUEPerformanceMetricsReporter.kt"


# static fields
.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final END_MARKER:Ljava/lang/String; = "end_marker"

.field public static final INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

.field private static final START_MARKER:Ljava/lang/String; = "start_marker"

.field private static final TAG:Ljava/lang/String; = "Profiles-FTUEPerformanceMetricsReporter"

.field private static registrationStartTime:J

.field private static final reportedMetricsSinceRegistration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/PerfMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static signInLocation:Lcom/amazon/kindle/trial/SignInLocation;

.field private static final timerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/Pair<",
            "Lcom/amazon/kcp/application/PerfMarker;",
            "Lcom/amazon/kcp/application/PerfMarker;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    invoke-direct {v0}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    .line 34
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportedMetricsSinceRegistration:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final reportDuration(JJLcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V
    .locals 0

    sub-long/2addr p3, p1

    .line 64
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportDuration(JLcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    return-void
.end method

.method private final reportDuration(JLcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V
    .locals 4

    .line 91
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->FTUE_PERF_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->FTUE_PERF_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start_marker"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 97
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_marker"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v2, "duration"

    .line 98
    invoke-interface {v1, v2, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v2, "getPayloadBuilder(\n     \u2026, duration)\n            }"

    .line 94
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting metric for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getSignInLocation()Lcom/amazon/kindle/trial/SignInLocation;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->signInLocation:Lcom/amazon/kindle/trial/SignInLocation;

    return-object v0
.end method

.method public final onLogout(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 108
    sput-wide v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->registrationStartTime:J

    const/4 p1, 0x0

    .line 109
    sput-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->signInLocation:Lcom/amazon/kindle/trial/SignInLocation;

    .line 110
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 111
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportedMetricsSinceRegistration:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "endMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-wide v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->registrationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportedMetricsSinceRegistration:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportedMetricsSinceRegistration:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-wide v2, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->registrationStartTime:J

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 57
    sget-object v6, Lcom/amazon/kcp/application/PerfMarker;->REGISTRATION:Lcom/amazon/kcp/application/PerfMarker;

    move-object v1, p0

    move-object v7, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportDuration(JJLcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setRegistrationStartTime(J)V
    .locals 0

    .line 32
    sput-wide p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->registrationStartTime:J

    return-void
.end method

.method public final setSignInLocation(Lcom/amazon/kindle/trial/SignInLocation;)V
    .locals 0

    .line 33
    sput-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->signInLocation:Lcom/amazon/kindle/trial/SignInLocation;

    return-void
.end method

.method public final startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V
    .locals 2

    const-string/jumbo v0, "startMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMarker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V
    .locals 6

    const-string/jumbo v0, "startMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endMarker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportDuration(JLcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 86
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
