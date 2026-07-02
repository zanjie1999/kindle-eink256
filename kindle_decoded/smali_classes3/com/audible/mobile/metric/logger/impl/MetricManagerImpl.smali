.class public final Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;
.super Ljava/lang/Object;
.source "MetricManagerImpl.kt"

# interfaces
.implements Lcom/audible/mobile/metric/logger/MetricManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetricManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricManagerImpl.kt\ncom/audible/mobile/metric/logger/impl/MetricManagerImpl\n*L\n1#1,128:1\n*E\n"
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final log$delegate:Lkotlin/Lazy;

.field private final loggerSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/mobile/metric/logger/FilterableMetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final timerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/metric/domain/TimerMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;-><init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->log$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->loggerSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->timerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    const-class p1, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "Executors.newSingleThrea\u2026ass.java.simpleName\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static final synthetic access$getLoggerSet$p(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->loggerSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private final executeAll(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;-><init>(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public record(Lcom/audible/mobile/metric/domain/CounterMetric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$1;

    invoke-direct {v0, p1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$1;-><init>(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executeAll(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V

    return-void
.end method

.method public record(Lcom/audible/mobile/metric/domain/DurationMetric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;

    invoke-direct {v0, p1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$2;-><init>(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executeAll(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V

    return-void
.end method

.method public record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$3;

    invoke-direct {v0, p1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$record$3;-><init>(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executeAll(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V

    return-void
.end method
