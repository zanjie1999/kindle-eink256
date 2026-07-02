.class public Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "BroadcastDownloadHandler.java"


# instance fields
.field private final baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

.field private final destination:Ljava/io/File;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final request:Lcom/audible/mobile/download/Request;

.field private final startId:I


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V
    .locals 7

    .line 45
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 52
    iput-object p4, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    .line 53
    iput p5, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->startId:I

    .line 54
    iput-object p3, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    .line 55
    iput-object p6, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->destination:Ljava/io/File;

    .line 56
    iput-object p2, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method private isSuccessfulResponse(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 86
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-static {v0}, Lcom/audible/mobile/download/ContentType;->createDownloadCancelledIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 2

    .line 75
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 77
    iget-object p2, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->destination:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/audible/mobile/download/ContentType;->createDownloadFailedIntent(Lcom/audible/mobile/download/Request;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onFinished()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 95
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->destination:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/audible/mobile/download/ContentType;->createDownloadCompleteIntent(Lcom/audible/mobile/download/Request;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 1
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

    .line 62
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p2

    .line 64
    invoke-direct {p0, p1}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->isSuccessfulResponse(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-static {p1}, Lcom/audible/mobile/download/ContentType;->createDownloadStartedIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-object p2
.end method

.method public onRemoved()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onRemoved()V

    .line 104
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-static {v0}, Lcom/audible/mobile/download/ContentType;->createDownloadRemovedIntent(Lcom/audible/mobile/download/Request;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 107
    iget-object v0, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->baseDownloadService:Lcom/audible/mobile/download/service/BaseDownloadService;

    iget v1, p0, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;->startId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
