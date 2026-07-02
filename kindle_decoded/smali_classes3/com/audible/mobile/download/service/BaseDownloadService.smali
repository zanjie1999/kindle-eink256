.class public abstract Lcom/audible/mobile/download/service/BaseDownloadService;
.super Landroid/app/Service;
.source "BaseDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TK;>;K::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Landroid/app/Service;"
    }
.end annotation


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final contentType:Lcom/audible/mobile/download/ContentType;

.field private downloadController:Lcom/audible/mobile/download/service/GenericDownloadController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/download/service/GenericDownloadController<",
            "TT;TK;>;"
        }
    .end annotation
.end field

.field private downloadRequestFactory:Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "TT;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method protected constructor <init>(Lcom/audible/mobile/download/ContentType;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/audible/mobile/util/Executors;->newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 49
    new-instance v0, Lcom/audible/mobile/download/service/BaseDownloadService$1;

    invoke-direct {v0, p0}, Lcom/audible/mobile/download/service/BaseDownloadService$1;-><init>(Lcom/audible/mobile/download/service/BaseDownloadService;)V

    iput-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "contentType cannot be null."

    .line 58
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->contentType:Lcom/audible/mobile/download/ContentType;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/download/service/BaseDownloadService;)Lcom/audible/mobile/download/service/GenericDownloadController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->downloadController:Lcom/audible/mobile/download/service/GenericDownloadController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/download/service/BaseDownloadService;Landroid/net/Uri;I)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/download/service/BaseDownloadService;->uriToDownloadRequest(Landroid/net/Uri;I)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method private constructDownloadRequestData(Lcom/audible/mobile/download/Request;ILandroid/net/Uri;)Lcom/audible/mobile/download/service/LibraryDownloadRequestData;
    .locals 7

    .line 126
    new-instance v6, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;

    iget-object v1, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->contentType:Lcom/audible/mobile/download/ContentType;

    move-object v0, v6

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/download/service/ImmutableLibraryDownloadRequestImpl;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/service/BaseDownloadService;ILcom/audible/mobile/download/Request;Landroid/net/Uri;)V

    return-object v6
.end method

.method private uriToDownloadRequest(Landroid/net/Uri;I)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->cursorToRequest(Landroid/database/Cursor;)Lcom/audible/mobile/download/Request;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 119
    :cond_1
    invoke-direct {p0, v1, p2, p1}, Lcom/audible/mobile/download/service/BaseDownloadService;->constructDownloadRequestData(Lcom/audible/mobile/download/Request;ILandroid/net/Uri;)Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->downloadRequestFactory:Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;

    invoke-interface {p2, v0, p1}, Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;->newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final getUrlResolutionStrategy()Lcom/audible/mobile/download/UrlResolutionStrategy;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-object v0
.end method

.method protected abstract newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "TT;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 6

    .line 132
    const-class v0, Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    .line 135
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v2

    const-class v3, Lcom/audible/mobile/download/DownloadManager;

    invoke-virtual {v2, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/download/DownloadManager;

    invoke-interface {v2}, Lcom/audible/mobile/download/DownloadManager;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v2

    .line 136
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v3

    .line 137
    const-class v4, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    invoke-virtual {v3, v4}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    .line 138
    new-instance v5, Lcom/audible/mobile/download/service/GenericDownloadController;

    invoke-direct {v5, p0, v4}, Lcom/audible/mobile/download/service/GenericDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    iput-object v5, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->downloadController:Lcom/audible/mobile/download/service/GenericDownloadController;

    .line 141
    invoke-virtual {v3, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->hasComponent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v3, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/download/UrlResolutionStrategy;

    iput-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    goto :goto_0

    .line 144
    :cond_0
    const-class v4, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v3, v4}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/identity/IdentityManager;

    .line 145
    new-instance v5, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;

    invoke-direct {v5, p0, v4}, Lcom/audible/mobile/download/MarketplaceBasedUrlResolutionStrategy;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;)V

    iput-object v5, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    .line 146
    invoke-virtual {v3, v0, v5}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 148
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/audible/mobile/download/service/BaseDownloadService;->newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->downloadRequestFactory:Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;

    .line 150
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.audible.mobile.identity.LOGOUT_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->downloadController:Lcom/audible/mobile/download/service/GenericDownloadController;

    invoke-virtual {v0}, Lcom/audible/mobile/downloader/BaseDownloadController;->terminate()V

    .line 159
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 163
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 89
    iget-object p2, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/audible/mobile/download/service/BaseDownloadService$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/audible/mobile/download/service/BaseDownloadService$2;-><init>(Lcom/audible/mobile/download/service/BaseDownloadService;Landroid/content/Intent;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    return p1
.end method

.method setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public startForegroundIfNecessary(Lcom/audible/mobile/download/Request;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->requiresForegroundDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object v0

    .line 177
    instance-of v1, v0, Lcom/audible/mobile/download/notification/DownloadNotificationFactory;

    if-eqz v1, :cond_0

    .line 178
    move-object v1, v0

    check-cast v1, Lcom/audible/mobile/download/notification/DownloadNotificationFactory;

    .line 179
    invoke-virtual {p1}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/audible/mobile/download/notification/DownloadNotificationFactory;->setAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 182
    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result p1

    .line 183
    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 184
    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public stopForegroundIfNecessary()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->requiresForegroundDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method
