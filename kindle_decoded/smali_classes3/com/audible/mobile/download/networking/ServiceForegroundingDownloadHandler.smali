.class public Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "ServiceForegroundingDownloadHandler.java"


# instance fields
.field private final baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

.field private final request:Lcom/audible/mobile/download/Request;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/download/service/BaseDownloadService;Lcom/audible/mobile/download/Request;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    .line 29
    iput-object p2, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/BaseDownloadService;Lcom/audible/mobile/download/Request;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 21
    iput-object p2, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    .line 22
    iput-object p3, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    return-void
.end method


# virtual methods
.method public onBegin()Z
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onBegin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    iget-object v2, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/download/service/BaseDownloadService;->startForegroundIfNecessary(Lcom/audible/mobile/download/Request;)V

    :cond_0
    return v0
.end method

.method public onCancelled()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 55
    iget-object v0, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-virtual {v0}, Lcom/audible/mobile/download/service/BaseDownloadService;->stopForegroundIfNecessary()V

    return-void
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 48
    iget-object p1, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-virtual {p1}, Lcom/audible/mobile/download/service/BaseDownloadService;->stopForegroundIfNecessary()V

    return-void
.end method

.method public onFinished()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-virtual {v0}, Lcom/audible/mobile/download/service/BaseDownloadService;->stopForegroundIfNecessary()V

    return-void
.end method
