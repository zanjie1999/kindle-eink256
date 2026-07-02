.class public Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "LowStorageAwareDownloadHandler.java"


# instance fields
.field private contentType:Lcom/audible/mobile/download/ContentType;

.field private lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

.field private responseLength:J


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    const-string p1, "contentType must not be null."

    .line 48
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    .line 50
    iput-object p3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    return-void
.end method


# virtual methods
.method public onBeforeContentReceived()Z
    .locals 5

    .line 94
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onBeforeContentReceived()Z

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    iget-wide v3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->responseLength:J

    invoke-interface {v1, v2, v3, v4}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->checkLowStorageLevel(Lcom/audible/mobile/download/ContentType;J)Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    iget-object v3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->getLowStorageAction(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    move-result-object v2

    .line 100
    sget-object v3, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->CANCEL_REQUEST:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    iget-object v3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->notifyLowStorage(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)V

    :cond_1
    return v0
.end method

.method public onBegin()Z
    .locals 5

    .line 56
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onBegin()Z

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->checkLowStorageLevel(Lcom/audible/mobile/download/ContentType;J)Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    iget-object v3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->getLowStorageAction(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    move-result-object v2

    .line 64
    sget-object v3, Lcom/audible/mobile/download/lowstorage/LowStorageAction;->CANCEL_REQUEST:Lcom/audible/mobile/download/lowstorage/LowStorageAction;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 69
    iget-object v2, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->lowStorageStrategy:Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    iget-object v3, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;->notifyLowStorage(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/download/lowstorage/LowStorageIdentifier;)V

    :cond_0
    return v0
.end method

.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/audible/mobile/downloader/interfaces/ServerResponse;"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->responseLength:J

    .line 82
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isError()Z

    move-result p2

    if-nez p2, :cond_0

    .line 83
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->contentLength()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;->responseLength:J

    :cond_0
    return-object p1
.end method
