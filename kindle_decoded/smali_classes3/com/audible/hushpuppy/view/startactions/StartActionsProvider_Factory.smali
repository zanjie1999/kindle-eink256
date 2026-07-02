.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;
.super Ljava/lang/Object;
.source "StartActionsProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
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

.field private final upsellLogicProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellWidgetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
            ">;"
        }
    .end annotation
.end field

.field private final webViewWidgetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/UpsellWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static newStartActionsProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
    .locals 1

    .line 96
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/UpsellWebView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;",
            ">;)",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    .line 65
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 66
    invoke-static {v0, p2}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V

    .line 67
    invoke-static {v0, p3}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectWebViewWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V

    .line 69
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellModel(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/model/read/IUpsellModel;)V

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectUpsellLogic(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/view/common/UpsellLogic;)V

    .line 72
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    .line 71
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;->injectPaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
    .locals 7

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->upsellWidgetProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->webViewWidgetProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->upsellModelProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->upsellLogicProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_Factory;->get()Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    move-result-object v0

    return-object v0
.end method
