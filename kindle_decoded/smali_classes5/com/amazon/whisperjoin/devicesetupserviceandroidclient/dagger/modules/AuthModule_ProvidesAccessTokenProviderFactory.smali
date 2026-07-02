.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;
.super Ljava/lang/Object;
.source "AuthModule_ProvidesAccessTokenProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final managerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

.field private final tokenKeysProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenManagementProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 27
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->managerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->tokenManagementProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->tokenKeysProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->managerProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->tokenManagementProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->tokenKeysProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesAccessTokenProvider(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesAccessTokenProviderFactory;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    move-result-object v0

    return-object v0
.end method
