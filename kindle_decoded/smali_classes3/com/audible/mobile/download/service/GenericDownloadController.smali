.class public Lcom/audible/mobile/download/service/GenericDownloadController;
.super Lcom/audible/mobile/downloader/BaseDownloadController;
.source "GenericDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TKey;>;Key::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Lcom/audible/mobile/downloader/BaseDownloadController<",
        "TRequest;TKey;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/BaseDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    return-void
.end method


# virtual methods
.method public final addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    .line 29
    instance-of v1, v0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;

    if-eqz v1, :cond_0

    .line 30
    check-cast v0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;

    const-class v1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->getDecoratorByClass(Ljava/lang/Class;)Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    .line 33
    :cond_0
    instance-of v1, v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    .line 36
    invoke-virtual {v0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getCompletedFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/audible/mobile/download/service/GenericDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v2, "Short-circuiting the download of existing file {} and calling the handler\'s onFinish and onRemoved."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onFinished()V

    .line 40
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRemoved()V

    return-void

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lcom/audible/mobile/downloader/BaseDownloadController;->addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V

    return-void
.end method
