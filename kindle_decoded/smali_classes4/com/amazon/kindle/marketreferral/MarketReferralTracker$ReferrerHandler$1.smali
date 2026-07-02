.class Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;
.super Landroid/os/AsyncTask;
.source "MarketReferralTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;Ljava/util/Map;)V
    .locals 0

    .line 86
    iput-object p2, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iget-object v1, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;->val$map:Ljava/util/Map;

    const-string v2, "MARKET_REFERRAL_TRACKER_FIRST_INSTALL"

    const-string v3, "InstallReferralFirstInstall"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1
.end method
