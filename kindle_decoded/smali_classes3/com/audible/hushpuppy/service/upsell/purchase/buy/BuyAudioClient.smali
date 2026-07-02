.class public final Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;
.super Ljava/lang/Object;
.source "BuyAudioClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;,
        Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_BAR_UPSELL_CODE:Ljava/lang/String; = "ReaderHPUpsell"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final START_ACTIONS_UPSELL_CODE:Ljava/lang/String; = "StartActionsReaderUpsell"


# instance fields
.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final instantiator:Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->eventBus:Lde/greenrobot/event/EventBus;

    .line 66
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 67
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;-><init>(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->instantiator:Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;

    return-void
.end method

.method private getAssociateCodeFromUpsellSource(Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Ljava/lang/String;
    .locals 3

    .line 119
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;->$SwitchMap$com$audible$hushpuppy$service$upsell$UpsellSource:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No associate code associated to upsell source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "StartActionsReaderUpsell"

    return-object p1

    :cond_1
    const-string p1, "ReaderHPUpsell"

    return-object p1
.end method


# virtual methods
.method public buyAudioAsynchronously(Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V
    .locals 0

    .line 74
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->startAsynchronousPurchase(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->executeRequest()V

    :cond_0
    return-void
.end method

.method public startAsynchronousPurchase(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 84
    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p3}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->getAssociateCodeFromUpsellSource(Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Ljava/lang/String;

    move-result-object v5

    .line 92
    new-instance v7, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->eventBus:Lde/greenrobot/event/EventBus;

    const/4 v2, 0x0

    invoke-direct {v7, p1, v1, p4, v2}, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lde/greenrobot/event/EventBus;ZZ)V

    .line 94
    iget-object p4, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p4

    if-nez p4, :cond_1

    .line 96
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Can\'t make purchase request - no active user account."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p4}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v8

    if-nez v8, :cond_2

    .line 102
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Can\'t make purchase request - no endpoints for this user account."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->instantiator:Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;

    iget-object v6, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object v3, p1

    move-object v4, p2

    move-object v9, p3

    invoke-interface/range {v2 .. v9}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;->instantiate(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;

    move-result-object p1

    return-object p1

    .line 85
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Cannot buy a null asin."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0
.end method
