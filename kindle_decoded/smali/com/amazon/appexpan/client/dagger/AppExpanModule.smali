.class public Lcom/amazon/appexpan/client/dagger/AppExpanModule;
.super Ljava/lang/Object;
.source "AppExpanModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideAsyncTaskExecutor()Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;-><init>()V

    return-object v0
.end method

.method provideDAO(Landroid/content/Context;)Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;

    invoke-direct {v0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideDebugSetting()Lcom/amazon/appexpan/client/util/DebugSettings;
    .locals 1

    .line 53
    new-instance v0, Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/util/DebugSettings;-><init>()V

    return-object v0
.end method

.method provideLocalResourceSetEventManager(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    invoke-direct {v0, p1}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;-><init>(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)V

    return-object v0
.end method

.method provideResourceDownloadManager(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
    .locals 8

    .line 34
    new-instance v7, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;-><init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)V

    return-object v7
.end method
