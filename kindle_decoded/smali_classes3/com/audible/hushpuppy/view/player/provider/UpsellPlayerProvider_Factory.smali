.class public final Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;
.super Ljava/lang/Object;
.source "UpsellPlayerProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;",
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

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final playerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static newUpsellPlayerProvider()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
    .locals 1

    .line 91
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;-><init>()V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;-><init>()V

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 60
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 63
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 62
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 65
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 64
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectUpsellController(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;)V

    .line 66
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/EventBus;

    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lde/greenrobot/event/EventBus;)V

    .line 68
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 67
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectRestrictionHandler(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 69
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_MembersInjector;->injectPlayerViewManager(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->upsellControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->playerViewManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider_Factory;->get()Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    move-result-object v0

    return-object v0
.end method
