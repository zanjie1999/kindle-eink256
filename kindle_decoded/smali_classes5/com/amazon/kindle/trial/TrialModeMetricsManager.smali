.class public final Lcom/amazon/kindle/trial/TrialModeMetricsManager;
.super Ljava/lang/Object;
.source "TrialModeMetrics.kt"


# static fields
.field private static final impl:Lcom/amazon/kindle/trial/TrialModeMetricsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/amazon/kindle/trial/TrialModeMetricsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/trial/TrialModeMetricsManager;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "MetricsManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-class v2, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/trial/TrialModeMetricsImpl;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    sput-object v0, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->impl:Lcom/amazon/kindle/trial/TrialModeMetricsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/trial/TrialModeMetrics;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->impl:Lcom/amazon/kindle/trial/TrialModeMetricsImpl;

    return-object v0
.end method
