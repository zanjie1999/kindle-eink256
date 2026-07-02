.class public final Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;
.super Ljava/lang/Object;
.source "PriceClient_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final cachedPricesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
            ">;"
        }
    .end annotation
.end field

.field private final endpointFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->cachedPricesProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->endpointFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/PriceClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;-><init>(Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/IEndpointFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/service/upsell/price/PriceClient;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->cachedPricesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->endpointFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient_Factory;->get()Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    move-result-object v0

    return-object v0
.end method
