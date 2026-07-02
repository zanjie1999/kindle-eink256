.class public Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "DatabaseDownloadHandler.java"


# static fields
.field private static final UPDATE_BUFFER_TIME:J = 0x1f4L


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadUri:Landroid/net/Uri;

.field private fileDownloadHandler:Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

.field private final initialContentOffset:J

.field private lastUpdate:Ljava/lang/Long;

.field private final logger:Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;J)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 31
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->logger:Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-wide/16 v0, -0x1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->lastUpdate:Ljava/lang/Long;

    .line 48
    iput-object p2, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->context:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->downloadUri:Landroid/net/Uri;

    .line 50
    iput-wide p4, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->initialContentOffset:J

    .line 51
    iput-object p1, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->fileDownloadHandler:Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    return-void
.end method

.method private isContentLengthValid(Ljava/lang/Long;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateDownload(Landroid/content/ContentValues;)I
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->downloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->logger:Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    iget-object v1, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->downloadUri:Landroid/net/Uri;

    const-string v2, "Unable to update non-existing DownloadUri: {}"

    invoke-virtual {v0, v2, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return p1
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->CANCELLED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->updateDownload(Landroid/content/ContentValues;)I

    return-void
.end method

.method public onContentReceived([BI)Z
    .locals 4

    .line 76
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onContentReceived([BI)Z

    move-result p1

    .line 79
    iget-object p2, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->lastUpdate:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->lastUpdate:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 83
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATUS"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->getStartOffset()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "TOTAL_BYTES_DOWNLOADED_SO_FAR"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-direct {p0, p2}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->updateDownload(Landroid/content/ContentValues;)I

    :cond_0
    return p1
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 2

    .line 97
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 99
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 100
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATUS"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATUS_REASON"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->updateDownload(Landroid/content/ContentValues;)I

    return-void
.end method

.method public onFinished()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->updateDownload(Landroid/content/ContentValues;)I

    return-void
.end method

.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 5
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

    .line 57
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->contentLength()Ljava/lang/Long;

    move-result-object p2

    .line 61
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->isContentLengthValid(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->initialContentOffset:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "TOTAL_BYTES_SIZE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    iget-object p2, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->fileDownloadHandler:Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    invoke-virtual {p2}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getInProgressOrCompletedFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LOCAL_DOWNLOAD_URI"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->updateDownload(Landroid/content/ContentValues;)I

    :cond_0
    return-object p1
.end method

.method public onRemoved()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onRemoved()V

    .line 131
    iget-object v0, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;->downloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
