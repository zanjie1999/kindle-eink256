.class public Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;
.super Ljava/lang/Object;
.source "UnBuyAsinTask.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

.field private final dialogService:Lcom/amazon/sitb/android/services/DialogService;

.field private final isGlideWeblabEnabled:Z

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

.field private final reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

.field private final store:Lcom/amazon/sitb/android/IStoreActions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/services/DialogService;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/events/IMessageQueue;Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Lcom/amazon/sitb/android/metrics/MetricEvent;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    .line 55
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    .line 56
    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 57
    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 58
    iput-object p5, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    .line 59
    iput-object p6, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 60
    iput-object p7, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    .line 62
    iput-object p9, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    .line 63
    iput-boolean p10, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->isGlideWeblabEnabled:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .line 75
    :try_start_0
    sget-object v0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Glide weblab is dialed up?=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->isGlideWeblabEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->isGlideWeblabEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 78
    invoke-interface {v3}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getInlineUnbuyReftagPrefix()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->unBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;I)Lcom/amazon/sitb/android/UnBuyResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 79
    invoke-interface {v3}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getInlineUnbuyReftagPrefix()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v4}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getPrepareBuyReftagPrefix()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/sitb/android/IStoreActions;->kcpUnBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;II)Lcom/amazon/sitb/android/UnBuyResult;

    move-result-object v0

    .line 81
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/sitb/android/UnBuyResult;->isSuccess()Z

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 83
    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    sget-object v4, Lcom/amazon/sitb/android/Metric;->CANCEL_CLICK_JSON_RESULT:Lcom/amazon/sitb/android/Metric;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    invoke-virtual {v5}, Lcom/amazon/sitb/android/PurchaseRecord;->getOrderId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/amazon/sitb/android/UnBuyResult;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/CancelSucceededEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/event/CancelSucceededEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_cancel_success_alert_title:I

    sget v2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_cancel_success_alert_message:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/services/DialogService;->showDialog(II)V

    goto :goto_3

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/sitb/android/event/CancelFailedEvent;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/UnBuyResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazon/sitb/android/event/CancelFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/ConnectivityHandler;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_cancel_failure_alert_title:I

    sget v2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_cancel_failure_alert_message:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/services/DialogService;->showDialog(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "RuntimeException during book cancel"

    invoke-interface {v1, v2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/CancelFailedEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;->asin:Ljava/lang/String;

    const-string v3, "exception"

    invoke-direct {v1, v2, v3}, Lcom/amazon/sitb/android/event/CancelFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
