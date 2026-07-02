.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;
.super Ljava/lang/Object;
.source "DaggerProvisionerServicesDependencyInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$1;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$1;)V

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provisionerServicesComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;
    .locals 0

    .line 174
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    return-object p0
.end method
