.class Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;
.super Ljava/lang/Object;
.source "DaggerProvisioningComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 507
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 506
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;->get()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    return-object v0
.end method
