.class public Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferChainInputStream.java"


# instance fields
.field private final mBuffers:[Ljava/nio/ByteBuffer;

.field private mPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 119
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 57
    :try_start_0
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public read([BII)I
    .locals 4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 81
    array-length v0, p1

    if-gt p2, v0, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 89
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p3, :cond_2

    .line 95
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    sub-int v3, p3, v0

    .line 96
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    aget-object v2, v2, v3

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 100
    iget v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;->mPosition:I

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    return v0

    :cond_3
    const/4 p1, -0x1

    return p1

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionLength="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
