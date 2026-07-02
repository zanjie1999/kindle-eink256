.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;
.super Ljava/lang/Object;
.source "UtilModule_ProvidesJobInfoProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)V

    return-object v0
.end method

.method public static proxyProvidesJobInfoProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;->providesJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    move-result-object v0

    return-object v0
.end method
