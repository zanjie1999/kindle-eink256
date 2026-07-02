.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/hushpuppy/PurchaseAudioModel;",
        ">;>;"
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 21
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/greenrobot/event/EventBus;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->proxyProvideAudioPurchaseRequestDelayedHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAudioPurchaseRequestDelayedHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Lde/greenrobot/event/EventBus;",
            ")",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideAudioPurchaseRequestDelayedHandler(Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideAudioPurchaseRequestDelayedHandlerFactory;->get()Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    move-result-object v0

    return-object v0
.end method
