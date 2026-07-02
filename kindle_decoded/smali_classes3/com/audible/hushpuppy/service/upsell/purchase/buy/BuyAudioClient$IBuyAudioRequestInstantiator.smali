.class public interface abstract Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$IBuyAudioRequestInstantiator;
.super Ljava/lang/Object;
.source "BuyAudioClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IBuyAudioRequestInstantiator"
.end annotation


# virtual methods
.method public abstract instantiate(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
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
            "Lcom/audible/hushpuppy/service/upsell/UpsellRequest;"
        }
    .end annotation
.end method
