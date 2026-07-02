.class public final Lcom/amazon/appexpan/client/AppExpanClient_MembersInjector;
.super Ljava/lang/Object;
.source "AppExpanClient_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/appexpan/client/AppExpanClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncTaskExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
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

.field private final debugSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
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

.field private final manifestHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ManifestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceSetLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/ResourceSetLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAsyncTaskExecutor(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->asyncTaskExecutor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    return-void
.end method

.method public static injectDao(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-void
.end method

.method public static injectDaoProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/AppExpanClient;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->daoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectDebugSettingsProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/AppExpanClient;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->debugSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectDownloadManager(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    return-void
.end method

.method public static injectEventManager(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    return-void
.end method

.method public static injectManifestHandler(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/download/ManifestHandler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

    return-void
.end method

.method public static injectManifestHandlerProvider(Lcom/amazon/appexpan/client/AppExpanClient;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/AppExpanClient;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ManifestHandler;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->manifestHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectResourceSetLoader(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/ResourceSetLoader;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    return-void
.end method
