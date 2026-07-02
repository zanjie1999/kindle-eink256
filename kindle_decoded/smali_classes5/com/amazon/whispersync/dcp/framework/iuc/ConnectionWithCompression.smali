.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "ConnectionWithCompression.java"


# instance fields
.field private mCompressedStream:Ljava/util/zip/GZIPOutputStream;

.field private mFlushed:Z

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mFlushed:Z

    .line 21
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->flushCompressedStream()V

    return-void
.end method

.method private createCompressedStream(Ljava/io/OutputStream;)Ljava/util/zip/GZIPOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private flushCompressedStream()V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mFlushed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mFlushed:Z

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->getOutputStream()Ljava/io/OutputStream;

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mCompressedStream:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInnerConnection()Ljava/net/URLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-static {v1, v0, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;->create(Ljava/net/URLConnection;Ljava/io/IOException;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/FailedConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->disconnect()V

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mCompressedStream:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mCompressedStream:Ljava/util/zip/GZIPOutputStream;

    if-nez v2, :cond_0

    .line 45
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->createCompressedStream(Ljava/io/OutputStream;)Ljava/util/zip/GZIPOutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mCompressedStream:Ljava/util/zip/GZIPOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->mCompressedStream:Ljava/util/zip/GZIPOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeStream(Ljava/io/OutputStream;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeStream(Ljava/io/OutputStream;)V

    throw v0
.end method

.method protected onExecutionRequested()V
    .locals 2

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->onExecutionRequested()V

    return-void
.end method

.method protected onExecutionResultsRequested()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;->flushCompressedStream()V

    .line 74
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->onExecutionResultsRequested()V

    return-void
.end method
