.class Lcom/amazon/sitb/android/updater/RequestService$1;
.super Ljava/lang/Object;
.source "RequestService.java"

# interfaces
.implements Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/updater/RequestService;->makeRequest(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/updater/RequestService;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/updater/RequestService;Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    iput-object p2, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseReceived(Z)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/updater/RequestService;->access$000(Lcom/amazon/sitb/android/updater/RequestService;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/amazon/sitb/android/updater/RequestService;->access$200()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {v2}, Lcom/amazon/sitb/android/updater/RequestService;->access$100(Lcom/amazon/sitb/android/updater/RequestService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "successfully"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "with failure"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {p1}, Lcom/amazon/sitb/android/updater/RequestService;->access$400(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {v1}, Lcom/amazon/sitb/android/updater/RequestService;->access$300(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {p1}, Lcom/amazon/sitb/android/updater/RequestService;->access$400(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {v1}, Lcom/amazon/sitb/android/updater/RequestService;->access$500(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 79
    :goto_1
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {p1}, Lcom/amazon/sitb/android/updater/RequestService;->access$400(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {v1}, Lcom/amazon/sitb/android/updater/RequestService;->access$600(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/Metric;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->stopMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->this$0:Lcom/amazon/sitb/android/updater/RequestService;

    invoke-static {p1}, Lcom/amazon/sitb/android/updater/RequestService;->access$400(Lcom/amazon/sitb/android/updater/RequestService;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/RequestService$1;->val$metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    const-class v1, Lcom/amazon/sitb/android/updater/RequestService;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V

    return-void
.end method
