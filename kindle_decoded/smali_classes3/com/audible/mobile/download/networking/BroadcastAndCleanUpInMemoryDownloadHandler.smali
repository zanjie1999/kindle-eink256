.class public Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;
.source "BroadcastAndCleanUpInMemoryDownloadHandler.java"


# instance fields
.field private final baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

.field private final downloadUri:Landroid/net/Uri;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final request:Lcom/audible/mobile/download/Request;

.field private final startId:I


# direct methods
.method public constructor <init>(Lcom/audible/mobile/download/service/LibraryDownloadRequestData;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;

    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;-><init>(Lcom/audible/mobile/download/service/BaseDownloadService;Lcom/audible/mobile/download/Request;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 40
    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    .line 41
    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->startId:I

    .line 42
    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    .line 43
    invoke-interface {p1}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->downloadUri:Landroid/net/Uri;

    .line 44
    iget-object p1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/mobile/download/ContentType;->createDownloadCompleteIntent(Lcom/audible/mobile/download/Request;[B)Landroid/content/Intent;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onRemoved()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onRemoved()V

    .line 73
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-virtual {v0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->downloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    iget v1, p0, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;->startId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
