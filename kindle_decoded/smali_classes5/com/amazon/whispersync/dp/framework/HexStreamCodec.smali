.class public Lcom/amazon/whispersync/dp/framework/HexStreamCodec;
.super Lcom/amazon/whispersync/dp/framework/StreamCodecBase;
.source "HexStreamCodec.java"


# static fields
.field private static final FIELD_DELIMITER:B = 0x20t

.field private static final INT_LENGTH:I = 0xa

.field private static final LONG_LENGTH:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;-><init>()V

    return-void
.end method

.method private decodeHex(Ljava/io/InputStream;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 162
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_6

    const-wide/16 v2, 0x0

    move v4, p2

    const/4 v0, 0x1

    .line 169
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_4

    int-to-byte v5, v5

    const/16 v6, 0x20

    if-ne v6, v5, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    const-string p2, "Unable to extract value from an empty parameter"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x4

    shl-long/2addr v2, v6

    const/16 v6, 0x10

    .line 179
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(II)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    int-to-long v5, v6

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    const-string p2, "Value length longer than expected"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected character in value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    return-wide v2

    .line 189
    :cond_5
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") shorter than expected ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_6
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    const-string p2, "Value not expressed in hexadecimal form"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_7
    new-instance p1, Lcom/amazon/whispersync/dp/framework/CodecException;

    const-string p2, "End of stream reached"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 193
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    const-string v0, "Invalid message format: unexpected end of stream"

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public decodeInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->decodeHex(Ljava/io/InputStream;I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method protected decodeLength(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->decodeInt(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method public decodeLong(Ljava/io/InputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->decodeHex(Ljava/io/InputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public encodeInt(ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0x%08x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->writeDelimiter(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected encodeLength(ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->encodeInt(ILjava/io/OutputStream;)V

    return-void
.end method

.method public encodeLong(JLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "0x%016x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->writeDelimiter(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getDelimiter()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "H"

    return-object v0
.end method

.method public getSizeOfDelimiter()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSizeOfEncodedMaxInteger()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    sget v0, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->INT_LENGTH:I

    return v0
.end method

.method public getSizeOfInt()I
    .locals 1

    .line 46
    sget v0, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->INT_LENGTH:I

    return v0
.end method

.method public getSizeOfLengthEncoding()I
    .locals 1

    .line 71
    sget v0, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->INT_LENGTH:I

    return v0
.end method

.method public getSizeOfLong()I
    .locals 1

    .line 51
    sget v0, Lcom/amazon/whispersync/dp/framework/HexStreamCodec;->LONG_LENGTH:I

    return v0
.end method

.method protected readDelimiter(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->read(Ljava/io/InputStream;I)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 139
    aget-byte p1, p1, v0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect delimiter.  Expected \'32\' but saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' instead."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeDelimiter(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 130
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lcom/amazon/whispersync/dp/framework/CodecException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
