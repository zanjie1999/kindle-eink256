.class public Lcom/amazon/whispersync/device/utils/MfbsInputStream;
.super Ljava/io/InputStream;
.source "MfbsInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;,
        Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;,
        Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;,
        Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private body:Ljava/nio/ByteBuffer;

.field private byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

.field private compressedByteStream:Ljava/io/OutputStream;

.field private header:Ljava/nio/ByteBuffer;

.field private headerWriter:Ljava/io/Writer;

.field private source:Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;-><init>(Lcom/amazon/whispersync/device/utils/MfbsInputStream$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    .line 26
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    .line 27
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->headerWriter:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/MfbsInputStream;-><init>()V

    .line 32
    new-instance v0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->source:Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/MfbsInputStream;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->source:Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;

    return-void
.end method

.method private static headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nFiles: messages.0\n------------------\nMFBS/1.0 1\n\nContent-Type: text/plain\nContent-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nContent-Length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nContent-Name: Content"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeaderWriter()Ljava/io/Writer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->headerWriter:Ljava/io/Writer;

    return-object v0
.end method

.method public pump()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->headerWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->source:Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;

    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;->copyTo(Ljava/io/OutputStream;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->compressedByteStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v0

    const-string v1, "GZIP"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->headerBuffer(ILjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->byteStream:Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;->getCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public read()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    :goto_0
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_0
    sub-int/2addr p3, v0

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 73
    iget-object v1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream;->body:Ljava/nio/ByteBuffer;

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
