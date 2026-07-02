.class public final Lcom/audible/hushpuppy/model/write/UpsellModel;
.super Lcom/audible/hushpuppy/model/write/AbstractModel;
.source "UpsellModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

.field private inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field private upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/UpsellModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;-><init>(Lde/greenrobot/event/EventBus;)V

    .line 28
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 47
    iget-object p1, p0, Lcom/audible/hushpuppy/model/write/AbstractModel;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->reset()V

    return-void
.end method


# virtual methods
.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    return-object v0
.end method

.method public getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object v0
.end method

.method public getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-object v0
.end method

.method public init(Lcom/audible/mobile/domain/Asin;)Z
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    const/4 p1, 0x1

    return p1
.end method

.method public isUpsellInProgress()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;)V
    .locals 2

    .line 129
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received PriceUpdateEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;->getPriceData()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Updating the model with pricedata in the payload. "

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;->getPriceData()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received PurchaseFailedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    if-eq p1, v0, :cond_0

    .line 145
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 115
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Upsell model reset"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    .line 118
    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/UpsellModel;->init(Lcom/audible/mobile/domain/Asin;)Z

    return-void
.end method

.method public setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 74
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-void
.end method

.method public setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 61
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/model/write/AbstractModel;->stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    return-void
.end method

.method public timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    if-ne p2, p1, :cond_0

    .line 153
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Updating state to purchase failed timeout"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 154
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/UpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic timeOut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    check-cast p2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModel;->timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
