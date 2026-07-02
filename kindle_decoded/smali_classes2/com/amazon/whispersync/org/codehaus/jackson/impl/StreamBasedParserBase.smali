.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;
.super Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;
.source "StreamBasedParserBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;I)V

    .line 69
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 70
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 71
    iput p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 72
    iput p6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 73
    iput-boolean p7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    .line 146
    iget-wide v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 147
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 148
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    goto :goto_0

    .line 151
    :cond_1
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 153
    :goto_0
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 154
    :goto_1
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v3, 0x1

    if-ge v2, p1, :cond_4

    .line 155
    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    if-eqz v2, :cond_2

    return v1

    .line 161
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_3
    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    goto :goto_1

    :cond_4
    return v3
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-super {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 189
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 193
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected final loadMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 111
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 117
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    const/4 v0, 0x1

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return v0
.end method
