.class public Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;
.super Ljava/lang/Object;
.source "ToaWebViewUpsellController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final upsellWritableModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->upsellWritableModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 50
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 51
    invoke-static {p3}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lde/greenrobot/event/EventBus;

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public onOrderComplete()V
    .locals 2

    .line 84
    sget-object v0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onOrderComplete, set upsell state to PURCHASE_REQUESTED, starting recording TODO timer metric"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->upsellWritableModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 87
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method public onReadAndListenClicked(Ljava/lang/String;)V
    .locals 4

    .line 62
    sget-object v0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onReadAndListenClicked, sending a PurchaseCompletedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->onOrderComplete()V

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/upsell/ToaInfoModalDismissEvent;->SHOULD_DISMISS:Lcom/audible/hushpuppy/common/event/upsell/ToaInfoModalDismissEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 67
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;-><init>(Lcom/audible/mobile/domain/Asin;ZZ)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 74
    sget-object p1, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Closing Start Actions dialog"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
