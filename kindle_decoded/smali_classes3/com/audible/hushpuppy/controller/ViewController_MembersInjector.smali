.class public final Lcom/audible/hushpuppy/controller/ViewController_MembersInjector;
.super Ljava/lang/Object;
.source "ViewController_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/controller/ViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final priceClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/controller/ViewController;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ViewController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static injectPriceClient(Lcom/audible/hushpuppy/controller/ViewController;Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ViewController;->priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    return-void
.end method
