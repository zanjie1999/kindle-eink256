.class public Lcom/fasterxml/jackson/core/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected _base64Buffer:[B

.field protected final _bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 104
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 105
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return-void
.end method

.method private wrongBuf()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final _verifyAlloc(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final _verifyRelease([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 273
    array-length p1, p1

    array-length p2, p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final _verifyRelease([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 277
    array-length p1, p1

    array-length p2, p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public allocBase64Buffer()[B
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    return-object v0
.end method

.method public allocConcatBuffer()[C
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    return-object p1
.end method

.method public allocTokenBuffer()[C
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    return-object v0
.end method

.method public allocWriteEncodingBuffer()[B
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
    .locals 2

    .line 137
    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseBase64Buffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    :cond_0
    return-void
.end method

.method public releaseConcatBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 249
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 240
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseWriteEncodingBuffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 224
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    :cond_0
    return-void
.end method

.method public setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
    .locals 0

    return-void
.end method
