.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;
.super Ljava/lang/Object;
.source "AuthModule_ProvidesTokenManagementFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/identity/auth/device/api/TokenManagement;",
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

.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 18
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/identity/auth/device/api/TokenManagement;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesTokenManagement(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenManagementFactory;->get()Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-result-object v0

    return-object v0
.end method
