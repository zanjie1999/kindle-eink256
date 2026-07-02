.class public Lcom/amazon/kcp/reader/ui/MappedIntArray;
.super Ljava/lang/Object;
.source "MappedIntArray.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MappedIntArray"


# instance fields
.field private mappedBuffer:Ljava/nio/MappedByteBuffer;

.field private path:Ljava/lang/String;

.field private size:I

.field private underlyingFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->path:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->size:I

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->underlyingFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 p2, p2, 0x4

    .line 41
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v4, p2

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->underlyingFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing underlying mapped file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MappedIntArray"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public get([I)V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->underlyingFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 51
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: Error locking underlying mapped file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MappedIntArray"

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->path:Ljava/lang/String;

    return-object v0
.end method

.method public put([I)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->underlyingFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MappedIntArray;->mappedBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 65
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: Error locking underlying mapped file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MappedIntArray"

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
