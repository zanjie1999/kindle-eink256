.class public Lcom/amazon/sitb/android/UpsellBarPresenter;
.super Ljava/lang/Object;
.source "UpsellBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/amazon/sitb/android/view/HasPresenter<",
        "Lcom/amazon/sitb/android/UpsellBarPresenter;",
        ">;:",
        "Lcom/amazon/sitb/android/view/ShowsModel<",
        "Lcom/amazon/sitb/android/model/UpsellModel;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final activityService:Lcom/amazon/sitb/android/services/ActivityService;

.field private final connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

.field private final dialogService:Lcom/amazon/sitb/android/services/DialogService;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;

.field private final oneClickSupportService:Lcom/amazon/sitb/android/services/OneClickSupportService;

.field private final purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

.field private final purchaseTaskFactory:Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;

.field private final reader:Lcom/amazon/sitb/android/ReaderActions;

.field private final reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

.field private final showMessageOnPaymentFailure:Z

.field private final store:Lcom/amazon/sitb/android/IStoreActions;

.field private final taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

.field private final transitionTaskFactory:Lcom/amazon/sitb/android/transition/TransitionTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/view/ViewManager;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/IStoreActions;Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;Lcom/amazon/sitb/android/ConnectivityHandler;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;Lcom/amazon/sitb/android/reftag/ReftagBundle;Lcom/amazon/sitb/android/transition/TransitionTaskFactory;Lcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/services/OneClickSupportService;ZLcom/amazon/sitb/android/services/DialogService;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/model/UpsellModel;",
            "Lcom/amazon/sitb/android/view/ViewManager<",
            "Lcom/amazon/sitb/android/UpsellBarPresenter;",
            "TV;>;",
            "Lcom/amazon/sitb/android/ReaderActions;",
            "Lcom/amazon/sitb/android/IStoreActions;",
            "Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;",
            "Lcom/amazon/sitb/android/ConnectivityHandler;",
            "Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;",
            "Lcom/amazon/sitb/android/metrics/MetricsService;",
            "Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;",
            "Lcom/amazon/sitb/android/reftag/ReftagBundle;",
            "Lcom/amazon/sitb/android/transition/TransitionTaskFactory;",
            "Lcom/amazon/sitb/android/services/ActivityService;",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            "Lcom/amazon/sitb/android/services/OneClickSupportService;",
            "Z",
            "Lcom/amazon/sitb/android/services/DialogService;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    move-object v2, p3

    .line 79
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    move-object v2, p4

    .line 80
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    move-object v2, p5

    .line 81
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    move-object v2, p6

    .line 82
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    move-object v2, p7

    .line 83
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-object v2, p8

    .line 84
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    move-object v2, p9

    .line 85
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->purchaseTaskFactory:Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;

    move-object v2, p10

    .line 86
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    move-object v2, p11

    .line 87
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->transitionTaskFactory:Lcom/amazon/sitb/android/transition/TransitionTaskFactory;

    move-object/from16 v2, p12

    .line 88
    iput-object v2, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->activityService:Lcom/amazon/sitb/android/services/ActivityService;

    move-object/from16 v3, p14

    .line 89
    iput-object v3, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->oneClickSupportService:Lcom/amazon/sitb/android/services/OneClickSupportService;

    move-object/from16 v3, p16

    .line 90
    iput-object v3, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    move/from16 v3, p17

    .line 91
    iput-boolean v3, v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->showMessageOnPaymentFailure:Z

    .line 93
    new-instance v3, Lcom/amazon/sitb/android/UpsellBarPresenter$1;

    move-object p3, v3

    move-object p4, p0

    move/from16 p5, p15

    move-object/from16 p6, p12

    move-object/from16 p7, p13

    move-object p8, p2

    invoke-direct/range {p3 .. p8}, Lcom/amazon/sitb/android/UpsellBarPresenter$1;-><init>(Lcom/amazon/sitb/android/UpsellBarPresenter;ZLcom/amazon/sitb/android/services/ActivityService;Lcom/amazon/kindle/krx/content/ContentType;Lcom/amazon/sitb/android/view/ViewManager;)V

    invoke-virtual {p1, v3}, Lcom/amazon/sitb/android/model/UpsellModel;->addListener(Lcom/amazon/sitb/android/model/UpsellModelListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/UpsellBarPresenter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/sitb/android/UpsellBarPresenter;->readFullBookNow()V

    return-void
.end method

.method private inState(Lcom/amazon/sitb/android/BookState;)Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellState()Lcom/amazon/sitb/android/BookState;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private readFullBookNow()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->activityService:Lcom/amazon/sitb/android/services/ActivityService;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->transitionTaskFactory:Lcom/amazon/sitb/android/transition/TransitionTaskFactory;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/transition/TransitionTaskFactory;->createTransitionTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/services/ActivityService;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handlePurchaseFailedEvent(Lcom/amazon/sitb/android/event/PurchaseFailedEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->showMessageOnPaymentFailure:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mfa-challenge-required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "price-increased"

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getAsin()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_VIEW:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getStoreBuyReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->DETAIL:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "optimistic-fulfilment-failure"

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getAsin()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_BUY:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getStoreBuyReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->BUY:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBuyClick(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/BookPrice;)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/ConnectivityHandler;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 158
    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->purchaseProtectionService:Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;

    invoke-interface {v1}, Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;->isPurchaseProtected()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 162
    sget-object p2, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "onBuyClick(): nowifi"

    invoke-interface {p2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/services/DialogService;->showNoWifiDialog()V

    .line 164
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_SHOW_NO_WIFI_DIALOG:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 166
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->isUsable()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 177
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object p2, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "onBuyClick(): borrowable"

    invoke-interface {p2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/ReaderActions;->uploadAnnotations()V

    .line 181
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_VIEW:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getBorrowReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->DETAIL:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    .line 182
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->BORROW_CLICK:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 186
    sget-object p2, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "onBuyClick(): isPurchaseProtected"

    invoke-interface {p2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/ReaderActions;->uploadAnnotations()V

    .line 188
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_BUY:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getStoreBuyReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->BUY:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    .line 189
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_PURCHASE_PROTECTED:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto/16 :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->oneClickSupportService:Lcom/amazon/sitb/android/services/OneClickSupportService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/OneClickSupportService;->isSupported()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/ReaderActions;->uploadAnnotations()V

    .line 194
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_BUY:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getStoreBuyReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->BUY:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    .line 195
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_ONE_CLICK_UNSUPPORTED:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto :goto_1

    .line 199
    :cond_4
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onBuyClick(): default"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseStarted(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/ReaderActions;->uploadAnnotations()V

    .line 202
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->purchaseTaskFactory:Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p1}, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->createBuyTask(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/purchase/BuyAsinTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 168
    :cond_5
    :goto_0
    sget-object p2, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "onBuyClick(): price is null or not usable"

    invoke-interface {p2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/ReaderActions;->uploadAnnotations()V

    .line 171
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/Metric;->TOS_VIEW:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getStoreBuyReftagPrefix()I

    move-result v2

    sget-object v3, Lcom/amazon/sitb/android/StoreDestination;->DETAIL:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    .line 172
    iget-object p2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->BUY_CLICK_NO_PRICE:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :goto_1
    return-void
.end method

.method public onCancelClick(Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/ConnectivityHandler;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/model/UpsellModel;->cancelStarted(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/ReaderActions;->cancelFullBookDownload(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->purchaseTaskFactory:Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;

    iget-object v2, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 285
    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 286
    invoke-virtual {v4}, Lcom/amazon/sitb/android/model/UpsellModel;->getPurchaseRecord()Lcom/amazon/sitb/android/PurchaseRecord;

    move-result-object v4

    .line 284
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/amazon/sitb/android/purchase/PurchaseTaskFactory;->createUnBuyTask(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;Lcom/amazon/sitb/android/metrics/MetricEvent;)Lcom/amazon/sitb/android/purchase/UnBuyAsinTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 291
    :cond_0
    sget-object p1, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "onCancelClick(): nowifi"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/DialogService;->showNoWifiDialog()V

    :goto_0
    return-void
.end method

.method public onDetailsClick()V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/sitb/android/Metric;->TOS_VIEW:Lcom/amazon/sitb/android/Metric;

    iget-object v3, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v3}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getDetailReftagPrefix()I

    move-result v3

    sget-object v4, Lcom/amazon/sitb/android/StoreDestination;->DETAIL:Lcom/amazon/sitb/android/StoreDestination;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/sitb/android/IStoreActions;->openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V

    return-void
.end method

.method public onDownloadClick(Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 6

    .line 213
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onDownloadClick()"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "onDownloadClick() : nextBookAsin : %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->syncWithReaderState()V

    .line 219
    sget-object v1, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/UpsellBarPresenter;->inState(Lcom/amazon/sitb/android/BookState;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/UpsellBarPresenter;->inState(Lcom/amazon/sitb/android/BookState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget-object p1, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v2, "onDownloadClick() : [nextBookAsin : %s] is not in expected state OWNED/DOWNLOADED"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseError(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->connectivityHandler:Lcom/amazon/sitb/android/ConnectivityHandler;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/ConnectivityHandler;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    sget-object v1, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "onDownloadClick(): isConnected"

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v1, v0}, Lcom/amazon/sitb/android/ReaderActions;->downloadFullBook(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v1, Lcom/amazon/sitb/android/Metric;->DOWNLOAD_CLICK_SUCCESS:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onDownloadClick(): isNotConnected"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->dialogService:Lcom/amazon/sitb/android/services/DialogService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/DialogService;->showNoWifiDialog()V

    .line 237
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    sget-object v1, Lcom/amazon/sitb/android/Metric;->DOWNLOAD_CLICK_SHOW_NO_WIFI_DIALOG:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :goto_0
    return-void
.end method

.method public onMykClick()V
    .locals 2

    .line 298
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onMykClick()"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->store:Lcom/amazon/sitb/android/IStoreActions;

    iget-object v1, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->reftagBundle:Lcom/amazon/sitb/android/reftag/ReftagBundle;

    invoke-interface {v1}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getPaymentErrorReftagPrefix()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/IStoreActions;->openMYK(I)V

    return-void
.end method

.method public onReadClick()V
    .locals 4

    .line 246
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onReadClick()"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->syncWithReaderState()V

    .line 250
    sget-object v0, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/UpsellBarPresenter;->inState(Lcom/amazon/sitb/android/BookState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/amazon/sitb/android/UpsellBarPresenter;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-object v1, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "onReadClick() : [nextBookAsin : %s] is not in expected state DOWNLOADED"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/UpsellBarPresenter;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "onReadClick(): readFullBookNow being called"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/amazon/sitb/android/UpsellBarPresenter;->readFullBookNow()V

    return-void
.end method
