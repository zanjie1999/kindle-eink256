.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;
.super Ljava/lang/Object;
.source "AuthModule_ProvidesTokenKeysFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 16
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;->contextProvider:Ljavax/inject/Provider;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule_ProvidesTokenKeysFactory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesTokenKeys(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 21
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
