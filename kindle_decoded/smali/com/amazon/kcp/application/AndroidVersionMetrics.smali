.class public final Lcom/amazon/kcp/application/AndroidVersionMetrics;
.super Ljava/lang/Object;
.source "AndroidVersionMetrics.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/kcp/application/AndroidVersionMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AndroidVersionMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordFastMetric()V
    .locals 5

    .line 30
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/application/AndroidVersionMetricsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to find FastMetrics"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "Build.VERSION.RELEASE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;-><init>(ILjava/lang/String;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->recordFastMetric()V

    return-void
.end method
