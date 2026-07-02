.class public final Lcom/audible/hushpuppy/controller/UpsellHelper;
.super Ljava/lang/Object;
.source "UpsellHelper.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IUpsellHelper;
.implements Lcom/audible/hushpuppy/controller/IExecutableCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/controller/IUpsellHelper;",
        "Lcom/audible/hushpuppy/controller/IExecutableCommand<",
        "Lcom/audible/hushpuppy/PurchaseAudioModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;"
        }
    .end annotation
.end field

.field private final buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

.field private upsellAutoDisappearTimeOutController:Lcom/audible/hushpuppy/controller/IStateChangeViewController;

.field private final upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

.field private final upsellTimeOutCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/UpsellHelper;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/IStateChangeViewController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            "Lcom/audible/hushpuppy/model/ITimeOutCallback;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            "Lcom/audible/hushpuppy/controller/IStateChangeViewController;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 103
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellTimeOutCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    .line 104
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 105
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 106
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->eventBus:Lde/greenrobot/event/EventBus;

    .line 107
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    .line 108
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 109
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    .line 110
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    .line 111
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellAutoDisappearTimeOutController:Lcom/audible/hushpuppy/controller/IStateChangeViewController;

    .line 112
    invoke-virtual {p5, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/IStateChangeViewController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            "Lcom/audible/hushpuppy/controller/IStateChangeViewController;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 77
    invoke-direct/range {v0 .. v10}, Lcom/audible/hushpuppy/controller/UpsellHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/IStateChangeViewController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V

    return-void
.end method

.method private declared-synchronized checkQueueAndTriggerPurchaseForCurrentTitle(Z)V
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Last set Audiobook is not set currently, ignoring the request to trigger purchase"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;->isRequestQueued(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Did not find any delayed purchase request currently queued. Ignoring the book close event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_2
    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnBookClose:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/controller/UpsellHelper;->reportOccurred(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 226
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;->dequeueRequest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/PurchaseAudioModel;

    .line 227
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/controller/UpsellHelper;->purchaseAudiobookImmediately(Lcom/audible/hushpuppy/PurchaseAudioModel;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized purchaseAudiobookImmediately(Lcom/audible/hushpuppy/PurchaseAudioModel;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PurchaseAudioModel cannot be null"

    .line 232
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Making network call for purchaseAudiobookImmediately"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 237
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    .line 239
    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->isToaOffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Redeeming TOA offer!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->toaRedeemClient:Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getUpsellSource()Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;->redeemToaOffer(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    goto :goto_0

    .line 244
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Buying audiobook!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->buyAudioClient:Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getUpsellSource()Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    move-result-object v3

    .line 246
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;->buyAudioAsynchronously(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V

    .line 250
    :goto_0
    new-instance p2, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellTimeOutCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->eventBus:Lde/greenrobot/event/EventBus;

    .line 251
    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;-><init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Lcom/audible/mobile/domain/Asin;)V

    .line 252
    invoke-virtual {p2}, Lcom/audible/hushpuppy/controller/UpsellTimeoutController;->startPurchaseTimeoutTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancelQueuedPurchaseOrder(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    const-string v0, "Asin passed cannot be null"

    .line 137
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancel queued purchase order for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;->dequeueRequest(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    return-void
.end method

.method public enqueuePurchaseRequestAndSetUpsellState(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V
    .locals 9

    const-string v0, "Ebook Asin passed cannot be null"

    .line 119
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Audiobook Asin passed cannot be null"

    .line 120
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "PriceData passed cannot be null"

    .line 121
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "InputPerformed passed cannot be null"

    .line 122
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UpsellSource passed cannot be null"

    .line 123
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enqueue purchase request came in for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 127
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 128
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellModel:Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0, p4}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    new-instance v8, Lcom/audible/hushpuppy/PurchaseAudioModel;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/audible/hushpuppy/PurchaseAudioModel;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;Z)V

    sget-object p1, Lcom/audible/hushpuppy/controller/IUpsellHelper;->DELAY_DURATION_FOR_PURCHASE_TIME:Lcom/audible/mobile/domain/Time;

    .line 131
    invoke-interface {p1}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/controller/IUpsellHelper;->DELAY_DURATION_FOR_PURCHASE_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 129
    invoke-interface {v0, v8, p0, p1, p2}, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;->enqueueRequest(Ljava/lang/Object;Lcom/audible/hushpuppy/controller/IExecutableCommand;J)Z

    return-void
.end method

.method public execute(Lcom/audible/hushpuppy/PurchaseAudioModel;)V
    .locals 3

    const-string v0, "PurchaseAudioModel cannot be null"

    .line 161
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Callback received when wait time finished for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseOnTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/UpsellHelper;->reportOccurred(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/UpsellHelper;->purchaseAudiobookImmediately(Lcom/audible/hushpuppy/PurchaseAudioModel;Z)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/audible/hushpuppy/PurchaseAudioModel;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/UpsellHelper;->execute(Lcom/audible/hushpuppy/PurchaseAudioModel;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;)V
    .locals 1

    .line 205
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    if-ne p1, v0, :cond_0

    .line 206
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received Background event for Application, make the purchase immediately"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/UpsellHelper;->checkQueueAndTriggerPurchaseForCurrentTitle(Z)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EbookCloseEvent;)V
    .locals 1

    .line 194
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received EbookCloseEvent, make the purchase immediately"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 195
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/UpsellHelper;->checkQueueAndTriggerPurchaseForCurrentTitle(Z)V

    return-void
.end method

.method public processQueuedPurchaseOrderImmediately(Lcom/audible/mobile/domain/Asin;Z)Z
    .locals 4

    .line 146
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Download after purchase flag: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Asin passed cannot be null"

    .line 147
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Process queued purchase order immediately for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->audioDelayPurchaseRequestHandler:Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;->dequeueRequest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/PurchaseAudioModel;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 151
    sget-object p2, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Could not find queued purchase request for %s, ignoring processImmediately request."

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v3

    .line 154
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/audible/hushpuppy/controller/UpsellHelper;->purchaseAudiobookImmediately(Lcom/audible/hushpuppy/PurchaseAudioModel;Z)V

    return v1
.end method

.method public reportOccurred(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    .line 262
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method public startAutoDisappearTimer(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Asin is null. Not able to start timer"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellAutoDisappearTimeOutController:Lcom/audible/hushpuppy/controller/IStateChangeViewController;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/controller/IStateChangeViewController;->startTimer(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method

.method public viewDisplayed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 1

    if-nez p1, :cond_0

    .line 181
    sget-object p1, Lcom/audible/hushpuppy/controller/UpsellHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Asin is null. Cannot update the view state to NONE"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UpsellHelper;->upsellAutoDisappearTimeOutController:Lcom/audible/hushpuppy/controller/IStateChangeViewController;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/controller/IStateChangeViewController;->viewDisplayed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
