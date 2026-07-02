.class Lcom/amazon/kcp/application/StandaloneApplication$5;
.super Ljava/lang/Object;
.source "StandaloneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneApplication;->updateSecurityProvider(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StandaloneApplication;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneApplication;Landroid/content/Context;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneApplication$5;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    iput-object p2, p0, Lcom/amazon/kcp/application/StandaloneApplication$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 315
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplication;->access$000()Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneApplication$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in installing the latest Security Provider from Google Play Services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplication;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AmazonKindle"

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 320
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method
