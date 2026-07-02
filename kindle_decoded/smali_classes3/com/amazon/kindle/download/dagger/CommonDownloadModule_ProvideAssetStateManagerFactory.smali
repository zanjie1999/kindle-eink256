.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideAssetStateManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
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

.field private final facadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->facadeProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->applicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;"
        }
    .end annotation

    .line 30
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->proxyProvideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->facadeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideAssetStateManagerFactory;->get()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    return-object v0
.end method
