.class public final Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;
.super Ljava/lang/Object;
.source "ObservableUpsellModel.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
.implements Lcom/audible/hushpuppy/common/misc/IObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
        "Lcom/audible/hushpuppy/common/misc/IObservable<",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
        ">;",
        "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

.field private inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field private final modelchangeListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/UpsellModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 50
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    .line 51
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 52
    sget-object p1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 54
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->modelchangeListenerSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    return-object v0
.end method

.method public getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object v0
.end method

.method public getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-object v0
.end method

.method public init(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 110
    sget-object p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Do not call init, use the constructor to pass in these values."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isUpsellInProgress()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyObservers(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->modelchangeListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 149
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->modelchangeListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic register(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    .line 121
    sget-object v0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Upsell model reset"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    return-void
.end method

.method public setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 80
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->notifyObservers(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;)V

    return-void
.end method

.method public setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-void
.end method

.method public setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->upsellState:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    .line 67
    sget-object p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->notifyObservers(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;)V

    return-void
.end method

.method public timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic timeOut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    check-cast p2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method

.method public unregister(Lcom/audible/hushpuppy/common/misc/ICallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->modelchangeListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->unregister(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    move-result p1

    return p1
.end method
