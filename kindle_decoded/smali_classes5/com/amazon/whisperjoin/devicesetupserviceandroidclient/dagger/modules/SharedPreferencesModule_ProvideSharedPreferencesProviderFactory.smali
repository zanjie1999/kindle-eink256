.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesModule_ProvideSharedPreferencesProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;",
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

.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    .line 19
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;->provideSharedPreferencesProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule_ProvideSharedPreferencesProviderFactory;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    move-result-object v0

    return-object v0
.end method
