.class public final Lcom/amazon/org/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected final _bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected _encoding:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field protected final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 63
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 70
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 77
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 85
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 95
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    .line 96
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_managedResource:Z

    return-void
.end method


# virtual methods
.method public final allocConcatBuffer()[C
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final allocNameCopyBuffer(I)[C
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    return-object p1

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final allocReadIOBuffer()[B
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final allocTokenBuffer()[C
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final allocWriteEncodingBuffer()[B
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final constructTextBuffer()Lcom/amazon/org/codehaus/jackson/util/TextBuffer;
    .locals 2

    .line 122
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TextBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final getEncoding()Lcom/amazon/org/codehaus/jackson/JsonEncoding;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_encoding:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final getSourceReference()Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public final isResourceManaged()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public final releaseConcatBuffer([C)V
    .locals 2

    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 225
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer not owned by the context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseNameCopyBuffer([C)V
    .locals 2

    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 236
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer not owned by the context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseReadIOBuffer([B)V
    .locals 2

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 189
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer not owned by the context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseTokenBuffer([C)V
    .locals 2

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 214
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer not owned by the context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseWriteEncodingBuffer([B)V
    .locals 2

    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 203
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to release buffer not owned by the context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setEncoding(Lcom/amazon/org/codehaus/jackson/JsonEncoding;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/io/IOContext;->_encoding:Lcom/amazon/org/codehaus/jackson/JsonEncoding;

    return-void
.end method
