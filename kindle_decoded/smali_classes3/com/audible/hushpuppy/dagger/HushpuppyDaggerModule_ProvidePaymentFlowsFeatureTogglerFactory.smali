.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 20
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;",
            ">;)",
            "Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->proxyProvidePaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providePaymentFlowsFeatureToggler(Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureTogglerImpl;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p1, p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    return-object p1
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->paymentFlowsFeatureTogglerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidePaymentFlowsFeatureTogglerFactory;->get()Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    move-result-object v0

    return-object v0
.end method
