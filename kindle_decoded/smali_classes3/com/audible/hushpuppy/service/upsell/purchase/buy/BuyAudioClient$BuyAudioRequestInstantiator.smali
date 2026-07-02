.class final Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;
.super Ljava/lang/Object;
.source "BuyAudioClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuyAudioRequestInstantiator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic instantiate(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
    .locals 0

    .line 154
    invoke-virtual/range {p0 .. p7}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$BuyAudioRequestInstantiator;->instantiate(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;

    move-result-object p1

    return-object p1
.end method

.method public instantiate(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;",
            ">;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/service/upsell/UpsellSource;",
            ")",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;"
        }
    .end annotation

    .line 160
    new-instance v8, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V

    return-object v8
.end method
