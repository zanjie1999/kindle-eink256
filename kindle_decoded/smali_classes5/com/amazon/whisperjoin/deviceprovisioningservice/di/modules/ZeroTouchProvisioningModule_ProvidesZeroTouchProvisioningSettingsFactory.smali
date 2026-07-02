.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->providesZeroTouchProvisioningSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    return-object v0
.end method
