.class public final Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;
.super Ljava/lang/Object;
.source "CachedPrices_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;-><init>(Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices_Factory;->get()Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    move-result-object v0

    return-object v0
.end method
