.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;
.super Ljava/lang/Object;
.source "ProvisioningManagerModule_GetProvisioningManagerDisposableFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceDiscoveryStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceEventStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->deviceEventStreamProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->deviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->deviceEventStreamProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->deviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;->getProvisioningManagerDisposable(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->get()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method
