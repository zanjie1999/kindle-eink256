.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanningModeFactory;
.super Ljava/lang/Object;
.source "DiscoveryConfigurationModule_ProvidesScanningModeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;


# direct methods
.method public static proxyProvidesScanningMode(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanningModeFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->providesScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanningModeFactory;->get()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    return-object v0
.end method
