.class public Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;
.super Ljava/lang/Object;
.source "BufferedRandomAccessFile.java"


# instance fields
.field private bufferedLength:I

.field private closed:Z

.field private final file:Ljava/io/RandomAccessFile;

.field private position:I

.field private readBuffer:[B

.field private readBufferStartPosition:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    .line 51
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBuffer:[B

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->closed:Z

    const/4 p2, -0x1

    .line 53
    iput p2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBufferStartPosition:I

    .line 54
    iput p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    return-void
.end method

.method private ensureFileIsOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillReadBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBufferStartPosition:I

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->bufferedLength:I

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->bufferedLength:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->ensureFileIsOpen()V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->closed:Z

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBuffer:[B

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->bufferedLength:I

    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->ensureFileIsOpen()V

    .line 185
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->ensureFileIsOpen()V

    .line 80
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBufferStartPosition:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->bufferedLength:I

    if-lt v1, v0, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->fillReadBuffer()V

    .line 85
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBufferStartPosition:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    if-lt v1, v0, :cond_2

    sub-int v2, v1, v0

    iget v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->bufferedLength:I

    if-ge v2, v3, :cond_2

    .line 87
    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->readBuffer:[B

    sub-int v0, v1, v0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 88
    iput v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ge v0, p3, :cond_1

    if-eq v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v1

    if-eq v1, v2, :cond_0

    add-int v2, p2, v0

    int-to-byte v3, v1

    .line 107
    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v1

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v2

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    return v0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v0

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 163
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->ensureFileIsOpen()V

    long-to-int p2, p1

    .line 175
    iput p2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/util/BufferedRandomAccessFile;->position:I

    return-void
.end method
