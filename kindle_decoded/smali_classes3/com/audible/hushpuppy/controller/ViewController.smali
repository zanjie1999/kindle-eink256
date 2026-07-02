.class public final Lcom/audible/hushpuppy/controller/ViewController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ViewController.java"


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
.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

.field private final userModel:Lcom/audible/hushpuppy/model/read/IUserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IUserModel;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 80
    check-cast p3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 81
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ViewController;->userModel:Lcom/audible/hushpuppy/model/read/IUserModel;

    .line 82
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ViewController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method private getNonUpsellViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasFullAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->NO_COMPANION:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ViewController;->getUpsellViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ERROR:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-ne v0, v1, :cond_2

    .line 136
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PAUSED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-ne v0, v1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 146
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 149
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isDownloadRequired()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->CANCELLED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 153
    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getDownloadState()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    move-result-object v1

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 160
    :cond_6
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ViewController;->handlePlayerViewStateBasedOnDownloadProgress()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    return-object v0

    .line 156
    :cond_7
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 151
    :cond_8
    :goto_1
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0
.end method

.method private getUpsellViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->userModel:Lcom/audible/hushpuppy/model/read/IUserModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUserModel;->isToaOfferEligible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ViewController;->isCurrentAsinToaEligible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Current book is eligible for TOA offer"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0
.end method

.method private handlePlayerViewStateBasedOnDownloadProgress()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudiobookDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isDownloadProgressGreaterThanZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 173
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0
.end method

.method private isCurrentAsinToaEligible()Z
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Price is not yet set to upsell model! So, NOT YET ELIGIBLE FOR TOA "

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getValue()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Price for this audiobook is ZERO! So, NOT ELIGIBLE FOR TOA"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private updateExpectedPrice()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ViewController;->priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->getAvailablePrice(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->setExpectedPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ViewController;->priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->fetchPriceAsynchronously(Lcom/audible/mobile/domain/Asin;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getUpsellState()Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    sget-object v1, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown upsell state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->NO_COMPANION:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 110
    :pswitch_0
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 108
    :pswitch_1
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 106
    :pswitch_2
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 104
    :pswitch_3
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 102
    :pswitch_4
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 100
    :pswitch_5
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0

    .line 98
    :pswitch_6
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ViewController;->getNonUpsellViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;)V
    .locals 3

    .line 197
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EBookHushpuppyEnabledEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;->init(Lcom/audible/mobile/domain/Asin;)Z

    .line 211
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ViewController;->updateExpectedPrice()V

    :cond_1
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 227
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSampleEbookPositionAfterSyncedLocation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    .line 237
    sget-object p1, Lcom/audible/hushpuppy/controller/ViewController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Toggling Upsell banner view, as the current EBook location is outside sample region"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    return-void
.end method

.method public setPlayerViewVisibility(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    return-void
.end method
