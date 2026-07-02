.class public final Lcom/audible/hushpuppy/controller/ActionBarUpsellController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ActionBarUpsellController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private final toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

.field private final upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

.field private final upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/service/upsell/price/PriceClient;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/controller/IUpsellHelper;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    const-string p2, "Upsell Model cannot be null!"

    .line 113
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    const-string p1, "Audiobook Switcher cannot be null!"

    .line 114
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    const-string p1, "Dialogue Manager cannot be null!"

    .line 115
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/hushpuppy/common/dialog/DialogManager;

    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    const-string p1, "Hushpuppy Model cannot be null!"

    .line 116
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    const-string p1, "Kindle SDK cannot be null!"

    .line 117
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "Price Client cannot be null!"

    .line 118
    invoke-static {p7, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    const-string p1, "ToaRedeemClient cannot be null!"

    .line 119
    invoke-static {p9, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p9, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    const-string p1, "BuyAudioClient cannot be null!"

    .line 120
    invoke-static {p8, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p8, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    iput-object p8, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    const-string p1, "Restriction Handler cannot be null!"

    .line 121
    invoke-static {p10, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p10, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    iput-object p10, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    const-string p1, "Audible Service cannot be null!"

    .line 122
    invoke-static {p11, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p11, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iput-object p11, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const-string p1, "AudibleDebuggerHelper cannot be null!"

    .line 123
    invoke-static {p12, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p12, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iput-object p12, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    const-string p1, "Upsell Helper cannot be null!"

    .line 124
    invoke-static {p13, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p13, Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iput-object p13, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    return-void
.end method

.method private purchase(Z)V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isInAppPurchaseAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v2, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->ACTION_BAR:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    .line 277
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 280
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeem:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 281
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;->redeemToaOffer(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    goto :goto_0

    .line 283
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchased:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 284
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    sget-object v3, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;->buyAudioAsynchronously(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 289
    new-instance p1, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p1, v0, v2, v1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;-><init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/domain/Asin;)V

    .line 290
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->startPurchaseTimeoutTimer()V

    .line 293
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchaseInStore(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    :goto_1
    return-void
.end method

.method private purchaseInStore(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    if-nez p1, :cond_0

    .line 341
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchasedWithoutPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    :cond_0
    return-void
.end method

.method private purchaseWithDelay(Z)V
    .locals 8

    .line 307
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    .line 312
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 314
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isInAppPurchaseAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 316
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellToaOfferRedeemQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    goto :goto_0

    .line 318
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseQueued:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    sget-object v5, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->ACTION_BAR:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    sget-object v6, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    move v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/audible/hushpuppy/controller/IUpsellHelper;->enqueuePurchaseRequestAndSetUpsellState(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-direct {p0, v4}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchaseInStore(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public isDelayedPurchaseEnabled()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isUpsellCanceledEnabled()Z

    move-result v0

    return v0
.end method

.method public onCancelOrder()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/IUpsellHelper;->cancelQueuedPurchaseOrder(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method public onDelayedBuyButtonClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchaseWithDelay(Z)V

    return-void
.end method

.method public onDelayedToaRedeemButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchaseWithDelay(Z)V

    return-void
.end method

.method public onToaRedeemButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchase(Z)V

    return-void
.end method

.method public onUpsellButtonClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->purchase(Z)V

    return-void
.end method

.method public processQueuedPurchaseOrderImmediately(Z)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Download after purchase flag: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/controller/IUpsellHelper;->processQueuedPurchaseOrderImmediately(Lcom/audible/mobile/domain/Asin;Z)Z

    return-void
.end method

.method public reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    .line 218
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method public showCancelOrderDialog()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->onCancelOrder()V

    return-void
.end method

.method public startAutoDisappearTimer(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    sget-object p1, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current relationship is null. This should not happen. Not able to start the auto disappear time out timer"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/controller/IUpsellHelper;->startAutoDisappearTimer(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method

.method public transitionToStore(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    :cond_0
    return-void
.end method

.method public viewDisplayed(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    sget-object p1, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current relationship is null. This should not happen. Cannot update the upsell state to NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->upsellHelper:Lcom/audible/hushpuppy/controller/IUpsellHelper;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/controller/IUpsellHelper;->viewDisplayed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
