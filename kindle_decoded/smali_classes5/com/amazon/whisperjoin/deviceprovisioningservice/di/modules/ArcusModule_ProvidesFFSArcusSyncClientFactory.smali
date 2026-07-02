.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;
.super Ljava/lang/Object;
.source "ArcusModule_ProvidesFFSArcusSyncClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

.field private final remoteConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    .line 19
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->remoteConfigurationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->remoteConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;->providesFFSArcusSyncClient(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    move-result-object v0

    return-object v0
.end method
