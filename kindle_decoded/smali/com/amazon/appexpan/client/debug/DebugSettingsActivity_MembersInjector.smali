.class public final Lcom/amazon/appexpan/client/debug/DebugSettingsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "DebugSettingsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
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

.field private final resourceDownloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ResourceDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceSetDetailsListAdapterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectDao(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    return-void
.end method

.method public static injectDebugSettings(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/util/DebugSettings;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    return-void
.end method

.method public static injectExecutor(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    return-void
.end method

.method public static injectManifestHandler(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/download/ManifestHandler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

    return-void
.end method

.method public static injectResourceDownloadManager(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    return-void
.end method

.method public static injectResourceSetDetailsListAdapterFactory(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailsListAdapterFactory:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

    return-void
.end method
