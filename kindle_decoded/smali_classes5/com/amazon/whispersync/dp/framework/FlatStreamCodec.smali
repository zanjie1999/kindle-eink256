.class public Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;
.super Lcom/amazon/whispersync/dp/framework/StreamCodecBase;
.source "FlatStreamCodec.java"


# static fields
.field private static final INT_LENGTH:I = 0x4

.field private static final LONG_LENGTH:I = 0x8

.field private static final SHORT_LENGTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;-><init>()V

    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    return-void
.end method

.method private decodeShort(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;->readIntoByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1
.end method

.method private encodeShort(SLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    return-void
.end method

.method private readIntoByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->read(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 137
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decodeInt(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;->readIntoByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method protected decodeLength(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;->decodeShort(Ljava/io/InputStream;)S

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

    const/16 v0, 0x8

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;->readIntoByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public encodeInt(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 90
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    return-void
.end method

.method protected encodeLength(ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_0

    int-to-short p1, p1

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dp/framework/FlatStreamCodec;->encodeShort(SLjava/io/OutputStream;)V

    return-void

    .line 111
    :cond_0
    new-instance p2, Lcom/amazon/whispersync/dp/framework/CodecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid length to encode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dp/framework/CodecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public encodeLong(JLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 100
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/dp/framework/StreamCodecBase;->write([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "F"

    return-object v0
.end method

.method public getSizeOfDelimiter()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSizeOfEncodedMaxInteger()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public getSizeOfInt()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getSizeOfLengthEncoding()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSizeOfLong()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected readDelimiter(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    return-void
.end method

.method protected writeDelimiter(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    return-void
.end method
