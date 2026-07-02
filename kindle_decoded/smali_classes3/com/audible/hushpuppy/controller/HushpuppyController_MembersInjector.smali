.class public final Lcom/audible/hushpuppy/controller/HushpuppyController_MembersInjector;
.super Ljava/lang/Object;
.source "HushpuppyController_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/controller/HushpuppyController;",
        ">;"
    }
.end annotation


# instance fields
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
.method public static injectPriceClient(Lcom/audible/hushpuppy/controller/HushpuppyController;Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    return-void
.end method
