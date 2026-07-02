.class public final Lcom/audible/hushpuppy/service/upsell/price/PriceClient;
.super Ljava/lang/Object;
.source "PriceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;,
        Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final cachedPrices:Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final instantiator:Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 71
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->cachedPrices:Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    .line 72
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->instantiator:Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;

    .line 73
    iput-object p4, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;

    invoke-direct {v0, p2}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->cachedPrices:Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    return-object p0
.end method


# virtual methods
.method public fetchPriceAsynchronously(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 85
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;-><init>(Lcom/audible/hushpuppy/service/upsell/price/PriceClient;Lcom/audible/mobile/domain/Asin;)V

    .line 91
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t get price - no active user account."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v1

    if-nez v1, :cond_1

    .line 98
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t get price - no endpoints for this user account."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->instantiator:Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;

    invoke-interface {v2, p1, v1, v0}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;->get(Lcom/audible/mobile/domain/Asin;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->executeRequest()V

    return-void
.end method

.method public getAvailablePrice(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->cachedPrices:Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->getPrice(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object p1

    return-object p1
.end method
