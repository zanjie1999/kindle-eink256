.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;
.super Ljava/lang/Object;
.source "ArcusModule_ProvidesDefaultArcuConfigurationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;->get()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/json/JSONObject;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    .line 19
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;->providesDefaultArcuConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
