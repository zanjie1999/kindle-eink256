.class public final Lcom/audible/hushpuppy/model/write/UpsellModelManager;
.super Ljava/lang/Object;
.source "UpsellModelManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;
.implements Lcom/audible/hushpuppy/common/misc/ICallback;
.implements Lcom/audible/hushpuppy/model/ITimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
        ">;",
        "Lcom/audible/hushpuppy/model/ITimeOutCallback<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookAsinToUpsellModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;",
            ">;"
        }
    .end annotation
.end field

.field private currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    .line 58
    iget-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private setObservableModelInputPerformed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Found existing upsell model for which input peformed needs to be set"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 338
    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    goto :goto_0

    .line 340
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not update the input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " performed no upsell model found for asin "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 330
    :cond_2
    :goto_1
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Could not update the model state either asin or inputPerformed is null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private setObservableModelState(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Found existing upsell model for which time out has happened. Updating its state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 321
    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    goto :goto_0

    .line 323
    :cond_1
    sget-object p2, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time out happened. Cannot update the state as no model found for asin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 313
    :cond_2
    :goto_1
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Could not update the model state either asin or upsellstate is null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;)V
    .locals 3

    if-nez p1, :cond_0

    .line 185
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received callback for null property. Ignoring"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received Callback for %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-eqz v0, :cond_3

    .line 190
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 198
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Callback received for ModelChangeEvent property (%s), ignoring"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    iget-object v2, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    iget-object v2, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->execute(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;)V

    return-void
.end method

.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid use case, CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid use case, CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    return-object v0
.end method

.method public getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid use case, CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    move-result-object v0

    return-object v0
.end method

.method public getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid use case, CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/audible/mobile/domain/Asin;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 65
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Trying to create an upsell model with null Asin"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Existing upsell model is being retrieved for Audiobook Asin %s"

    invoke-interface {v0, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 72
    invoke-virtual {p1, p0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    return v1

    .line 76
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Creating new observable model"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;-><init>(Lcom/audible/mobile/domain/Asin;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 78
    iget-object v2, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-virtual {p1, p0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    return v1
.end method

.method public isUpsellInProgress()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid use case, CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->isUpsellInProgress()Z

    move-result v0

    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;)V
    .locals 2

    .line 253
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received CurrentEbookRelationshipChangeEvent event"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Relationship passed is null for RelationshipModifiedInStorageEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "This should not happen as UpsellModel is inited and we are persisting Sample in the DB"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "There is no ObservableUpsellModel which contains the same asin %s, ignoring"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 274
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->reset()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;)V
    .locals 3

    .line 211
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PriceUpdateEvent - asin is null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received PriceUpdateEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    sget-object v1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Found existing upsell model for which pricedata needed to be updated."

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 221
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;->getPriceData()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    :cond_1
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseFailedEvent;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PurchaseFailedEvent - asin is null."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received PurchaseFailedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Found existing upsell model for which Purchase has failed."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    .line 242
    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Cannot reset. CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    invoke-virtual {v0, p0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->unregister(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    .line 173
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->isUpsellInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "There was no action from the user, dropping this upsell model."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->audiobookAsinToUpsellModelMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting current upsell model to null"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    return-void
.end method

.method public setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 97
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot set expectedPrice. CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    return-void
.end method

.method public setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 107
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot set InputPerformed. CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setInputPerformed(Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    return-void
.end method

.method public setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->currentUpsellModel:Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;

    if-nez v0, :cond_0

    .line 87
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot set upsellState. CurrentUpsellModel is null. Either Init is not called or Reset has been called earlier"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/ObservableUpsellModel;->setUpsellState(Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    return-void
.end method

.method public timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$upsell$StateChangeViewSource:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 305
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown StateChangeViewSource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    sget-object p2, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->setObservableModelState(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    .line 302
    sget-object p2, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->setObservableModelInputPerformed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;)V

    goto :goto_0

    .line 297
    :cond_2
    sget-object p2, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->setObservableModelState(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;)V

    :goto_0
    return-void

    .line 291
    :cond_3
    :goto_1
    sget-object p1, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "TimeOut - asin or stateChangeViewSource is null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic timeOut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    check-cast p2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/model/write/UpsellModelManager;->timeOut(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
