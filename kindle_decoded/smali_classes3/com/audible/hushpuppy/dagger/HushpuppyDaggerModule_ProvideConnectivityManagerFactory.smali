.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideConnectivityManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/net/ConnectivityManager;",
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 19
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Landroid/net/ConnectivityManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroid/net/ConnectivityManager;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->proxyProvideConnectivityManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideConnectivityManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/net/ConnectivityManager;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideConnectivityManagerFactory;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
