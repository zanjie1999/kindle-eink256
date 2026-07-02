.class public Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferChainOutputStream.java"


# instance fields
.field private final mBuffers:[Ljava/nio/ByteBuffer;

.field private mPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    aget-object v0, v0, v1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Reached the end of the ByteBufferChain and did not manage to write the byte!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 78
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 83
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-ge v0, p3, :cond_2

    .line 93
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    sub-int v3, p3, v0

    .line 94
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    aget-object v2, v2, v3

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 98
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    goto :goto_1

    :cond_2
    if-lt v0, p3, :cond_3

    return-void

    .line 103
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached the end of the ByteBufferChain and only managed to write "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes out of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " requested"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No bytes could be written because we are already at the end of the ByteBufferChain.  mPosition = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mPosition:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mBuffers.length = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Array must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
