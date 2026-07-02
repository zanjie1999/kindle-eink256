.class public Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;
.super Lcom/audible/mobile/downloader/handler/FileDownloadHandler;
.source "FileProgressBroadcastHandler.java"


# static fields
.field private static final PROGRESS_UPDATE_INTERVAL:J


# instance fields
.field private contentLength:J

.field private contentStartingOffset:J

.field private lastProgressUpdate:J

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final request:Lcom/audible/mobile/download/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->PROGRESS_UPDATE_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;ZLcom/audible/mobile/download/Request;)V
    .locals 6

    .line 34
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;ZLcom/audible/mobile/download/Request;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;ZLcom/audible/mobile/download/Request;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->contentStartingOffset:J

    const-wide/high16 p1, -0x8000000000000000L

    .line 28
    iput-wide p1, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->lastProgressUpdate:J

    const-string p1, "request must not be null"

    .line 42
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "localBroadcastManager cant be null"

    .line 43
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object p4, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->request:Lcom/audible/mobile/download/Request;

    .line 45
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getStartOffset()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->contentStartingOffset:J

    .line 46
    iput-object p5, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method


# virtual methods
.method public onContentReceived([BI)Z
    .locals 6

    .line 67
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->onContentReceived([BI)Z

    move-result p1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->lastProgressUpdate:J

    sget-wide v4, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->PROGRESS_UPDATE_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->request:Lcom/audible/mobile/download/Request;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getInProgressOrCompletedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->contentLength:J

    invoke-static {p2, v2, v3, v4, v5}, Lcom/audible/mobile/download/ContentType;->createDownloadProgressIntent(Lcom/audible/mobile/download/Request;JJ)Landroid/content/Intent;

    move-result-object p2

    .line 71
    iget-object v2, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 72
    iput-wide v0, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->lastProgressUpdate:J

    :cond_0
    return p1
.end method

.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 4
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

    .line 52
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isError()Z

    move-result p2

    if-nez p2, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->contentLength()Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->contentStartingOffset:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;->contentLength:J

    :cond_1
    return-object p1
.end method
