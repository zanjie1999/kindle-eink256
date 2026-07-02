.class Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;
.super Ljava/lang/Object;
.source "DaggerProvisionerServicesComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/app/job/JobScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-void
.end method


# virtual methods
.method public get()Landroid/app/job/JobScheduler;
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 678
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 677
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;->get()Landroid/app/job/JobScheduler;

    move-result-object v0

    return-object v0
.end method
