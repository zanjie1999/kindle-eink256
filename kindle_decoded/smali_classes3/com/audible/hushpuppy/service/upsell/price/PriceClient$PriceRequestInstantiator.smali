.class final Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;
.super Ljava/lang/Object;
.source "PriceClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/price/PriceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriceRequestInstantiator"
.end annotation


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Lcom/audible/mobile/domain/Asin;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;->get(Lcom/audible/mobile/domain/Asin;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/audible/mobile/domain/Asin;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$PriceRequestInstantiator;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)V

    return-object v0
.end method
