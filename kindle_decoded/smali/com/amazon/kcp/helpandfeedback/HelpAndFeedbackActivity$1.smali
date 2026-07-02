.class Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$1;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "HelpAndFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->uploadLogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$1;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 6

    .line 608
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "HelpAndFeedback"

    if-eqz v0, :cond_1

    .line 610
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "CantileverLogUploadError"

    invoke-virtual {v3, v2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 613
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "CantileverLogUploadSuccess"

    invoke-virtual {v3, v2, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
