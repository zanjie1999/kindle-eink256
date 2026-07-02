.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesLocationPermissionsHelperFactory;
.super Ljava/lang/Object;
.source "UtilModule_ProvidesLocationPermissionsHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
        ">;"
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

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;


# direct methods
.method public static proxyProvidesLocationPermissionsHelper(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesLocationPermissionsHelper(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesLocationPermissionsHelperFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesLocationPermissionsHelperFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesLocationPermissionsHelper(Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesLocationPermissionsHelperFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    return-object v0
.end method
