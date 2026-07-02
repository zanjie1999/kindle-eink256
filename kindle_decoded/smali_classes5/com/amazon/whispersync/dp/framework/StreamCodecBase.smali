.class public abstract Lcom/amazon/whispersync/dp/framework/StreamCodecBase;
.super Ljava/lang/Object;
.source "StreamCodecBase.java"

# interfaces
.implements Lcom/amazon/whispersync/dp/framework/StreamCodec;


# static fields
.field protected static final FALSE_BYTE:B = 0x66t

.field protected static final MAX_ENCODED_LENGTH:I = 0x2000

.field protected static final TRUE_BYTE:B = 0x74t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeAsciiString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->read(Ljava/io/InputStream;I)[B

    move-result-object p2

    .line 190
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->readDelimiter(Ljava/io/InputStream;)V

    .line 192
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public decodeBool(Ljava/io/InputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->read(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->readDelimiter(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 73
    aget-byte v1, v1, p1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x66

    if-ne v1, v0, :cond_1

    return p1

    .line 79
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract bool from byte: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->decodeLength(Ljava/io/InputStream;)I

    move-result v0

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->read(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->readDelimiter(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected abstract decodeLength(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public decodeString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->decodeByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 149
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public encodeAsciiString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "UTF-8"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 177
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->writeDelimiter(Ljava/io/OutputStream;)V

    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String appears to not be ASCII"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodeBool(ZLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [B

    const/16 v1, 0x74

    aput-byte v1, p1, v0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [B

    const/16 v1, 0x66

    aput-byte v1, p1, v0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    .line 59
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->writeDelimiter(Ljava/io/OutputStream;)V

    return-void
.end method

.method public encodeByteArray([BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 95
    array-length v0, p1

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 100
    array-length v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->encodeLength(ILjava/io/OutputStream;)V

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->writeDelimiter(Ljava/io/OutputStream;)V

    return-void

    .line 96
    :cond_0
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte[] too long to encode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byte[] cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract encodeLength(ILjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method public encodeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->encodeByteArray([BLjava/io/OutputStream;)V

    return-void

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSizeOfBool()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected read(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const-string v0, "Invalid message format: unexpected end of stream"

    if-ltz p2, :cond_2

    const/16 v1, 0x2000

    if-gt p2, v1, :cond_2

    .line 267
    new-array v1, p2, [B

    if-eqz p2, :cond_1

    .line 270
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract byte[] of length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Read: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 279
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 277
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_1
    :goto_0
    return-object v1

    .line 263
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message format: incoming byte[] has invalid length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract readDelimiter(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method

.method protected write([BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 244
    array-length v0, p1

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 251
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 245
    :cond_0
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte[] too long to encode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byte[] cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract writeDelimiter(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation
.end method
