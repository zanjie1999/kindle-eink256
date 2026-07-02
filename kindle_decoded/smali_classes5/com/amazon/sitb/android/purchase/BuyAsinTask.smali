.class public Lcom/amazon/sitb/android/purchase/BuyAsinTask;
.super Ljava/lang/Object;
.source "BuyAsinTask.java"

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

.field private final isGlideWeblabEnabled:Ljava/lang/Boolean;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final price:Lcom/amazon/sitb/android/BookPrice;

.field private final purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

.field private final purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

.field private final reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

.field private final store:Lcom/amazon/sitb/android/IStoreActions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/BuyAsinTask;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;Lcom/amazon/kindle/krx/events/IMessageQueue;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    .line 53
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 54
    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 55
    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    .line 56
    iput-object p5, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    .line 57
    iput-object p6, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 58
    iput-object p7, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->price:Lcom/amazon/sitb/android/BookPrice;

    .line 60
    iput-object p9, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    .line 61
    iput-object p10, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->isGlideWeblabEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private verifyPurchase(Lcom/amazon/sitb/android/BuyAsinResult;)Z
    .locals 6

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_FAILURE:Lcom/amazon/sitb/android/Metric;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->metricEvent:Lcom/amazon/sitb/android/metrics/MetricEvent;

    sget-object v2, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_JSON_RESULT:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->getOrderId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->purchaseOwnershipService:Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/purchase/PurchaseOwnershipService;->isOwned(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->purchaseDownloadService:Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;

    invoke-virtual {v1, v0}, Lcom/amazon/sitb/android/purchase/PurchaseDownloadService;->hasDownloadStarted(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/PurchaseSucceededEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    new-instance v3, Lcom/amazon/sitb/android/PurchaseRecord;

    .line 98
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->isSuccess()Z

    move-result v4

    .line 99
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->getOrderId()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->getOrderItemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/amazon/sitb/android/PurchaseRecord;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/amazon/sitb/android/event/PurchaseSucceededEvent;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V

    .line 96
    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 p1, 0x1

    return p1

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    const-string/jumbo v2, "optimistic-fulfilment-failure"

    invoke-direct {v0, v1, v2}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_2

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/BuyAsinResult;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 111
    sget-object v0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Failed post execute of buy task"

    invoke-interface {v0, v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object p1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    const-string v2, "exception"

    invoke-direct {v0, v1, v2}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .line 72
    :try_start_0
    sget-object v0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Glide weblab is dialed up?=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->isGlideWeblabEnabled:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->isGlideWeblabEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->price:Lcom/amazon/sitb/android/BookPrice;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 75
    invoke-interface {v3}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getInlineBuyReftagPrefix()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->buyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)Lcom/amazon/sitb/android/BuyAsinResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->price:Lcom/amazon/sitb/android/BookPrice;

    iget-object v3, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    .line 76
    invoke-interface {v3}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getInlineBuyReftagPrefix()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v4}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getPrepareBuyReftagPrefix()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/sitb/android/IStoreActions;->kcpBuyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;II)Lcom/amazon/sitb/android/BuyAsinResult;

    move-result-object v0

    .line 77
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->verifyPurchase(Lcom/amazon/sitb/android/BuyAsinResult;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/amazon/sitb/android/purchase/BuyAsinTask;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "RuntimeException during book purchase"

    invoke-interface {v1, v2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
