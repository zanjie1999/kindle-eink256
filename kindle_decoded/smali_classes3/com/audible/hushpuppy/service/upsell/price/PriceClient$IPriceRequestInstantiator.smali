.class public interface abstract Lcom/audible/hushpuppy/service/upsell/price/PriceClient$IPriceRequestInstantiator;
.super Ljava/lang/Object;
.source "PriceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/price/PriceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IPriceRequestInstantiator"
.end annotation


# virtual methods
.method public abstract get(Lcom/audible/mobile/domain/Asin;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/UpsellRequest;"
        }
    .end annotation
.end method
