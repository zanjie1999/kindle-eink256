.class public final Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;
.super Ljava/lang/Object;
.source "AppExpanModule_ProvideResourceDownloadManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private final compressedResourceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;"
        }
    .end annotation
.end field

.field private final eventManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

.field private final resourceURLHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    .line 44
    iput-object p2, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->daoProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->eventManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->compressedResourceHandlerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->resourceURLHandlerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->analyticsProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;"
        }
    .end annotation

    .line 90
    new-instance v8, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;-><init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/CompressedResourceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/metrics/Analytics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 75
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    .line 76
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    .line 77
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    .line 78
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/amazon/appexpan/client/metrics/Analytics;

    .line 79
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    move-object v0, p0

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->proxyProvideResourceDownloadManager(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideResourceDownloadManager(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
    .locals 0

    .line 109
    invoke-virtual/range {p0 .. p6}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;->provideResourceDownloadManager(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 108
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->daoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->eventManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->compressedResourceHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->resourceURLHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->analyticsProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->get()Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-result-object v0

    return-object v0
.end method
