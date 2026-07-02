.class public final Lcom/audible/hushpuppy/controller/StartActionsUpsellController;
.super Ljava/lang/Object;
.source "StartActionsUpsellController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private final toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

.field private final upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 112
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 113
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 114
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    .line 115
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 116
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 117
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 118
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 119
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    return-void
.end method

.method private purchaseAudioBook(Z)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isInAppPurchaseAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 220
    sget-object p1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Redeeming TOA offer!"

    invoke-interface {p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;->redeemToaOffer(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    .line 222
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsToaRedeemButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_0

    .line 224
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Buying audiobook!"

    invoke-interface {p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;->buyAudioAsynchronously(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    .line 226
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 231
    new-instance p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p1, v0, v2, v1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;-><init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/domain/Asin;)V

    .line 232
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->startPurchaseTimeoutTimer()V

    .line 235
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 236
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->START_ACTIONS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    goto :goto_1

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->START_ACTIONS:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {p1, v1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    if-nez v0, :cond_3

    .line 246
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsBuyWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 169
    sget-object v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Cancel purchase from start action."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;->PURCHASE_CANCEL:Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionsCancelButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method public onReadAndListenClicked()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    .line 159
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    return-void
.end method

.method public onReturnFromCancel()V
    .locals 2

    .line 187
    sget-object v0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Return from purchase cancel in start action."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;->RETURN_FROM_PURCHASE_CANCEL:Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onReturnFromError()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 197
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    return-void
.end method

.method public onToaRedeemButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->purchaseAudioBook(Z)V

    return-void
.end method

.method public onUpsellButtonClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->purchaseAudioBook(Z)V

    return-void
.end method
