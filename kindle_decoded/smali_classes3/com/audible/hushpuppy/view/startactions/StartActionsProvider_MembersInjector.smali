.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsProvider_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsProvider_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;",
        ">;"
    }
.end annotation


# instance fields
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
.method public static injectPaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    return-void
.end method

.method public static injectUpsellLogic(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/view/common/UpsellLogic;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    return-void
.end method

.method public static injectUpsellModel(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Lcom/audible/hushpuppy/model/read/IUpsellModel;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    return-void
.end method

.method public static injectUpsellWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellWidgetProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectWebViewWidgetProvider(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/UpsellWebView;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->webViewWidgetProvider:Ljavax/inject/Provider;

    return-void
.end method
