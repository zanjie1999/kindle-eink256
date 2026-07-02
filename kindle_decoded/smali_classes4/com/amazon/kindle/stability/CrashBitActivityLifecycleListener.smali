.class public final Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;
.super Ljava/lang/Object;
.source "CrashBitActivityLifecycleListener.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final crashBit:Lcom/amazon/kindle/stability/CrashBit;

.field private final metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field private final tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kindle/stability/CrashBit;)V
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashBit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/amazon/kindle/stability/ActivityTagGeneratorImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/stability/ActivityTagGeneratorImpl;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kindle/stability/CrashBit;Lcom/amazon/kindle/stability/ActivityTagGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kindle/stability/CrashBit;Lcom/amazon/kindle/stability/ActivityTagGenerator;)V
    .locals 2

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashBit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagGen"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iput-object p2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    iput-object p3, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/CrashBit;->check()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/stability/ActivityTagGenerator;->fromCrashBitTag(Ljava/lang/String;)Lcom/amazon/kindle/stability/ActivityTag;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CBAL_Crash_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "CrashBitActivity"

    invoke-virtual {p2, v1, p3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 72
    iget-object p2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getCrashBitTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/stability/CrashBit;->clear(Ljava/lang/String;)Z

    :cond_0
    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We can\'t do anything with the crash bit if the MetricsManager hasn\'t been initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "a"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/stability/ActivityTagGenerator;->fromActivity(Landroid/app/Activity;)Lcom/amazon/kindle/stability/ActivityTag;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {v0}, Lcom/amazon/kindle/stability/CrashBit;->check()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/stability/ActivityTagGenerator;->fromCrashBitTag(Ljava/lang/String;)Lcom/amazon/kindle/stability/ActivityTag;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 81
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const-string v3, "CrashBitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CABL_Pause_Mismatch_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, v3, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    if-eqz v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {v0}, Lcom/amazon/kindle/stability/ActivityTag;->getCrashBitTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/stability/CrashBit;->clear(Ljava/lang/String;)Z

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getCrashBitTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/stability/CrashBit;->clear(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/stability/ActivityTagGenerator;->fromActivity(Landroid/app/Activity;)Lcom/amazon/kindle/stability/ActivityTag;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const-string v1, "CrashBitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBAL_Resume_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {v0}, Lcom/amazon/kindle/stability/CrashBit;->check()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->tagGen:Lcom/amazon/kindle/stability/ActivityTagGenerator;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/stability/ActivityTagGenerator;->fromCrashBitTag(Ljava/lang/String;)Lcom/amazon/kindle/stability/ActivityTag;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->metrics:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const-string v2, "CrashBitActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CABL_Resume_Mismatch_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 105
    iget-object v1, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {v0}, Lcom/amazon/kindle/stability/ActivityTag;->getCrashBitTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/stability/CrashBit;->clear(Ljava/lang/String;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;->crashBit:Lcom/amazon/kindle/stability/CrashBit;

    invoke-interface {p1}, Lcom/amazon/kindle/stability/ActivityTag;->getCrashBitTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/stability/CrashBit;->set(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
