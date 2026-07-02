.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerProvisionerServicesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

.field private errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

.field private metricsModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

.field private provisioningConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

.field private provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$1;)V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->metricsModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    return-object p0
.end method


# virtual methods
.method public baseComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;
    .locals 0

    .line 625
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-object p0
.end method

.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    const-string v1, " must be set"

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->metricsModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->metricsModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    if-nez v0, :cond_2

    .line 593
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    if-eqz v0, :cond_3

    .line 598
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$1;)V

    return-object v0

    .line 596
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    .line 584
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provisioningConfigurationModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;
    .locals 0

    .line 610
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    return-object p0
.end method
