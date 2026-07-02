.class public final Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;
.super Ljava/lang/Object;
.source "LibraryLeftNavProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final audiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;",
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

.field private final paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;",
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


# direct methods
.method public static newLibraryLeftNavProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
    .locals 8

    .line 91
    new-instance v7, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;",
            ">;)",
            "Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;"
        }
    .end annotation

    .line 59
    new-instance v7, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    .line 60
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 61
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lde/greenrobot/event/EventBus;

    .line 62
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 63
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 64
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 65
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->hushpuppyStorageProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider_Factory;->get()Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    move-result-object v0

    return-object v0
.end method
