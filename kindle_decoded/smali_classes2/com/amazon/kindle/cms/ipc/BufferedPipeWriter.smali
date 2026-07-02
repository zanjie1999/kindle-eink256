.class public final Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;
.super Ljava/lang/Object;
.source "BufferedPipeWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;
    }
.end annotation


# instance fields
.field private final m_bufferedStream:Ljava/io/BufferedOutputStream;

.field private final m_dataStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_bufferedStream:Ljava/io/BufferedOutputStream;

    .line 24
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    iget-object v0, p1, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 81
    iput-object p0, p1, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;->exception:Ljava/io/IOException;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;-><init>(Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$1;)V

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 51
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 56
    :try_start_1
    iput-object v1, v0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;->exception:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-static {v1, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->closeQuietly(Ljava/io/Closeable;Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;)V

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    invoke-static {v1, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->closeQuietly(Ljava/io/Closeable;Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;)V

    .line 64
    iget-object v0, v0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    throw v0

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-static {v2, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->closeQuietly(Ljava/io/Closeable;Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;)V

    .line 61
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    invoke-static {v2, v0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->closeQuietly(Ljava/io/Closeable;Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;)V

    throw v1
.end method

.method public put(Lcom/amazon/kindle/cms/ipc/Pipeable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;->getPipeCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;->m_dataStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/Pipeable;->writeToPipe(Ljava/io/DataOutput;)V

    return-void
.end method
