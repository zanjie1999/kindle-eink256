.class public Lcom/amazon/device/utils/det/MfbsInputStream;
.super Ljava/io/InputStream;
.source "MfbsInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field private body:Ljava/nio/ByteBuffer;

.field private byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

.field private compressedByteStream:Ljava/io/OutputStream;

.field private header:Ljava/nio/ByteBuffer;

.field private logFileWriter:Ljava/io/Writer;

.field private mBufferedReader:Ljava/io/BufferedReader;


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;-><init>(Lcom/amazon/device/utils/det/MfbsInputStream$1;)V

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    .line 26
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    .line 27
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/amazon/device/utils/det/MfbsInputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->mBufferedReader:Ljava/io/BufferedReader;

    return-void
.end method

.method private static headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nFiles: messages.0\n------------------\nMFBS/1.0 1\n\nContent-Type: text/plain\nContent-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nContent-Length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nContent-Name: Content\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLogFileWriter()Ljava/io/Writer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    return-object v0
.end method

.method public pump()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GZIP"

    :goto_0
    const/4 v1, 0x0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v3, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 49
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 50
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v2

    invoke-static {v2, v0}, Lcom/amazon/device/utils/det/MfbsInputStream;->headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 54
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "pump"

    const-string v4, "Error while writing to log/crash file. File with partial information would be uploaded"

    .line 46
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 49
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 50
    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v2

    invoke-static {v2, v0}, Lcom/amazon/device/utils/det/MfbsInputStream;->headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :goto_2
    return-void

    .line 48
    :goto_3
    iget-object v3, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->logFileWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 49
    iget-object v3, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 50
    iget-object v3, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v3

    invoke-static {v3, v0}, Lcom/amazon/device/utils/det/MfbsInputStream;->headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->byteStream:Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/amazon/device/utils/det/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v3

    invoke-static {v0, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 54
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 55
    throw v2
.end method

.method public read()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    :goto_0
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_0
    sub-int/2addr p3, v0

    .line 76
    iget-object v1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 78
    iget-object v1, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_1
    add-int/2addr v0, p3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 107
    iget-object v0, p0, Lcom/amazon/device/utils/det/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
