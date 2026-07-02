.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;
.super Ljava/lang/Object;
.source "DaggerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DaggerWrapper"

.field protected static sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

.field protected static sOverrideProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;
    .locals 2

    .line 77
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getBaseComponent"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Base component not initialized"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-object v0
.end method

.method public static getBaseDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseDependencyInjector;
    .locals 2

    .line 59
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getBaseDependencyInjector"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;->baseComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseDependencyInjector;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializedProvisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;
    .locals 2

    .line 201
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sOverrideProvisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    if-eqz v0, :cond_0

    return-object v0

    .line 210
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Creating provisioning component"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 212
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->baseComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->provisioningConfigurationModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    .line 214
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object p0

    return-object p0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Base component must first be initiailzed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getProvisioningDependencyInjector(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;
    .locals 1

    .line 188
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->provisionerServicesComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;

    .line 190
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;

    move-result-object p0

    return-object p0
.end method

.method public static initializeBaseComponent(Landroid/content/Context;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    if-eqz v0, :cond_0

    .line 67
    sget-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Base Component already exists"

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Initializing base component"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->contextModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;

    .line 73
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object p0

    sput-object p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->sBaseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-void
.end method
