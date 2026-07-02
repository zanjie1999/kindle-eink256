.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideNetworkServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/network/INetworkService;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->applicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/network/INetworkService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kindle/network/INetworkService;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->proxyProvideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/network/INetworkService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideNetworkServiceFactory;->get()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    return-object v0
.end method
