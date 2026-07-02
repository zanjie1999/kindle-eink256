.class public final Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;
.super Ljava/lang/Object;
.source "DaggerAppExpanComponent.java"

# interfaces
.implements Lcom/amazon/appexpan/client/dagger/AppExpanComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;
    }
.end annotation


# instance fields
.field private analyticsProvider:Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

.field private compressedResourceHandlerProvider:Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;

.field private context:Landroid/content/Context;

.field private contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private manifestHandlerProvider:Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;

.field private provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDAOProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;"
        }
    .end annotation
.end field

.field private provideDebugSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalResourceSetEventManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideResourceDownloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private resourceURLHandlerProvider:Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;


# direct methods
.method private constructor <init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->initialize(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;-><init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;
    .locals 2

    .line 60
    new-instance v0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;-><init>(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$1;)V

    return-object v0
.end method

.method private getAnalytics()Lcom/amazon/appexpan/client/metrics/Analytics;
    .locals 2

    .line 76
    new-instance v0, Lcom/amazon/appexpan/client/metrics/Analytics;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/metrics/Analytics;-><init>(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V

    return-object v0
.end method

.method private getCompressedResourceHandler()Lcom/amazon/appexpan/client/download/CompressedResourceHandler;
    .locals 2

    .line 64
    new-instance v0, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-direct {v0, v1}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;-><init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V

    return-object v0
.end method

.method private getManifestHandler()Lcom/amazon/appexpan/client/download/ManifestHandler;
    .locals 5

    .line 80
    new-instance v0, Lcom/amazon/appexpan/client/download/ManifestHandler;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    iget-object v3, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDebugSettingProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getAnalytics()Lcom/amazon/appexpan/client/metrics/Analytics;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/appexpan/client/download/ManifestHandler;-><init>(Landroid/content/Context;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/util/DebugSettings;Lcom/amazon/appexpan/client/metrics/Analytics;)V

    return-object v0
.end method

.method private getResourceSetDetailsListAdapterFactory()Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;
    .locals 4

    .line 85
    new-instance v0, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideResourceDownloadManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getResourceSetLoader()Lcom/amazon/appexpan/client/ResourceSetLoader;
    .locals 5

    .line 68
    new-instance v0, Lcom/amazon/appexpan/client/ResourceSetLoader;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideResourceDownloadManagerProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 71
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getCompressedResourceHandler()Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/appexpan/client/ResourceSetLoader;-><init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Landroid/content/Context;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)V
    .locals 8

    .line 93
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$100(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->contextProvider:Ljavax/inject/Provider;

    .line 96
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;->create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDAOFactory;

    move-result-object v0

    .line 95
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    .line 99
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;

    move-result-object v0

    .line 98
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    .line 103
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    .line 102
    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideLocalResourceSetEventManagerProvider:Ljavax/inject/Provider;

    .line 104
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static {v0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->compressedResourceHandlerProvider:Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;

    .line 108
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDebugSettingProvider:Ljavax/inject/Provider;

    .line 109
    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->contextProvider:Ljavax/inject/Provider;

    .line 110
    invoke-static {v1, v0}, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->resourceURLHandlerProvider:Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;

    .line 111
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/appexpan/client/metrics/Analytics_Factory;->create(Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->analyticsProvider:Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

    .line 115
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$200(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideLocalResourceSetEventManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->compressedResourceHandlerProvider:Lcom/amazon/appexpan/client/download/CompressedResourceHandler_Factory;

    iget-object v5, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->resourceURLHandlerProvider:Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;

    iget-object v6, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->analyticsProvider:Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

    iget-object v7, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->contextProvider:Ljavax/inject/Provider;

    .line 114
    invoke-static/range {v1 .. v7}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;->create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideResourceDownloadManagerFactory;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideResourceDownloadManagerProvider:Ljavax/inject/Provider;

    .line 122
    invoke-static {p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;->access$100(Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent$Builder;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->context:Landroid/content/Context;

    .line 123
    iget-object p1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDebugSettingProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->analyticsProvider:Lcom/amazon/appexpan/client/metrics/Analytics_Factory;

    .line 124
    invoke-static {p1, v0, v1, v2}, Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->manifestHandlerProvider:Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;

    return-void
.end method

.method private injectAppExpanClient(Lcom/amazon/appexpan/client/AppExpanClient;)Lcom/amazon/appexpan/client/AppExpanClient;
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getResourceSetLoader()Lcom/amazon/appexpan/client/ResourceSetLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectResourceSetLoader(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/ResourceSetLoader;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideLocalResourceSetEventManagerProvider:Ljavax/inject/Provider;

    .line 141
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    .line 140
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectEventManager(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    .line 143
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    .line 142
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectAsyncTaskExecutor(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V

    .line 144
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideResourceDownloadManagerProvider:Ljavax/inject/Provider;

    .line 145
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 144
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectDownloadManager(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V

    .line 146
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDebugSettingProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectDebugSettingsProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->manifestHandlerProvider:Lcom/amazon/appexpan/client/download/ManifestHandler_Factory;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectManifestHandlerProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectDaoProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V

    .line 150
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectDao(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V

    .line 151
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getManifestHandler()Lcom/amazon/appexpan/client/download/ManifestHandler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;->injectManifestHandler(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/download/ManifestHandler;)V

    return-object p1
.end method

.method private injectDebugSettingsActivity(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDAOProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectDao(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V

    .line 157
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideResourceDownloadManagerProvider:Ljavax/inject/Provider;

    .line 158
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    .line 157
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectResourceDownloadManager(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V

    .line 159
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideAsyncTaskExecutorProvider:Ljavax/inject/Provider;

    .line 160
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    .line 159
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectExecutor(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V

    .line 161
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getManifestHandler()Lcom/amazon/appexpan/client/download/ManifestHandler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectManifestHandler(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/download/ManifestHandler;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->provideDebugSettingProvider:Ljavax/inject/Provider;

    .line 163
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 162
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectDebugSettings(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/util/DebugSettings;)V

    .line 165
    invoke-direct {p0}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->getResourceSetDetailsListAdapterFactory()Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;->injectResourceSetDetailsListAdapterFactory(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/appexpan/client/AppExpanClient;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->injectAppExpanClient(Lcom/amazon/appexpan/client/AppExpanClient;)Lcom/amazon/appexpan/client/AppExpanClient;

    return-void
.end method

.method public inject(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->injectDebugSettingsActivity(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    return-void
.end method
