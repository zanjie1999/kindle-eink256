.class public Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;
.source "InMemoryDownloadHandler.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 17
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final onContentReceived([BI)Z
    .locals 3

    .line 32
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onContentReceived([BI)Z

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->baos:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
