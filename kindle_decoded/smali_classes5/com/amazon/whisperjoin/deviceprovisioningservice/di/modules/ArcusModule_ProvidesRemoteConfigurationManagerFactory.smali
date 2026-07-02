.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;
.super Ljava/lang/Object;
.source "ArcusModule_ProvidesRemoteConfigurationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
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

.field private final defaultConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->defaultConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->defaultConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;->providesRemoteConfigurationManager(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->get()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object v0

    return-object v0
.end method
