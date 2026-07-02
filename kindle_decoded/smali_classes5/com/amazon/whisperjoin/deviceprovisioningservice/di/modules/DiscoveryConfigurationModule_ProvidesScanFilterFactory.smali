.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;
.super Ljava/lang/Object;
.source "DiscoveryConfigurationModule_ProvidesScanFilterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Landroid/bluetooth/le/ScanFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    .line 20
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->contextProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesScanFilter(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
