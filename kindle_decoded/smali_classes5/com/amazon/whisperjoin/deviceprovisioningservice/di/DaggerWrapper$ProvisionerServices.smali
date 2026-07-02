.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;
.super Ljava/lang/Object;
.source "DaggerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisionerServices"
.end annotation


# instance fields
.field private final mProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

.field private mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

.field private mProvisioningComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

.field private mWorkflowComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

.field private mZeroTouchControllerComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->baseComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    invoke-direct {p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningConfigurationModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    .line 104
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    return-void
.end method


# virtual methods
.method public createWorkflow(Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mWorkflowComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

    if-eqz v0, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    invoke-direct {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;-><init>(Lio/reactivex/Single;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->workflowModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 181
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->provisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;

    .line 182
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must init provisioning component first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;
    .locals 2

    .line 112
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 113
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->provisionerServicesComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;

    .line 114
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;

    move-result-object v0

    return-object v0
.end method

.method public getProvisioningDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;
    .locals 2

    .line 118
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 119
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;->provisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;

    .line 120
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;

    move-result-object v0

    return-object v0
.end method

.method public initProvisioningComponent(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    if-eqz v0, :cond_0

    .line 135
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 136
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 140
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->provisionerServicesComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->discoveryConfigurationModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;

    .line 142
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 144
    invoke-interface {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesProvisioningManagerDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public zeroTouchController(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mZeroTouchControllerComponentOverride:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->mProvisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 166
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->provisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->zeroTouchProvisioningModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;

    .line 168
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;

    move-result-object p1

    return-object p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must init provisioning component first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
