.class public abstract Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.super Ljava/lang/Object;
.source "DownloadHandlerDecorator.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    return-void
.end method

.method private _getDecoratorByClass(Ljava/lang/Class;)Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            ">;)",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p1, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    return-object p1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    instance-of v1, v0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;

    invoke-direct {v0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->_getDecoratorByClass(Ljava/lang/Class;)Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDecoratorByClass(Ljava/lang/Class;)Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            ">;)",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;"
        }
    .end annotation

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->_getDecoratorByClass(Ljava/lang/Class;)Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object p1

    return-object p1
.end method

.method public getStartOffset()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->getStartOffset()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onBeforeContentReceived()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onBeforeContentReceived()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBegin()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onBegin()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCancelled()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onCancelled()V

    :cond_0
    return-void
.end method

.method public onConnected()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onConnected()V

    :cond_0
    return-void
.end method

.method public onContentReceived([BI)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onContentReceived([BI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onFinished()V

    :cond_0
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_0
    return-void
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

    .line 79
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Lcom/audible/mobile/downloader/BaseServerResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/audible/mobile/downloader/BaseServerResponse;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public onRedirect(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1, p2, p3}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRedirect(ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRemoved()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->mWrappedHandler:Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRemoved()V

    :cond_0
    return-void
.end method
