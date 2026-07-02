.class public Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;
.super Ljava/lang/Object;
.source "PacketParser.java"


# static fields
.field public static final INT_SIZE:I = 0x4

.field public static final LONG_SIZE:I = 0x8

.field public static final SHORT_SIZE:I = 0x2


# instance fields
.field private mBinaryData:Ljava/io/ByteArrayInputStream;

.field private mHasError:Z


# direct methods
.method public constructor <init>([BJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mBinaryData:Ljava/io/ByteArrayInputStream;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mHasError:Z

    return-void
.end method

.method private readFromBinaryData(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 87
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    :goto_0
    div-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_0

    .line 90
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mBinaryData:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v0, v3, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 93
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method


# virtual methods
.method public hasError()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mHasError:Z

    return v0
.end method

.method public readByteArray(J)[B
    .locals 1

    long-to-int p2, p1

    .line 67
    new-array p1, p2, [B

    .line 70
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mBinaryData:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 74
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mHasError:Z

    :goto_0
    return-object p1
.end method

.method public readCharArray(J)Ljava/lang/String;
    .locals 1

    long-to-int p2, p1

    .line 52
    new-array p1, p2, [B

    .line 55
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mBinaryData:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 59
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->mHasError:Z

    .line 62
    :goto_0
    new-instance p2, Ljava/lang/String;

    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->CHARSET_UTF:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public readUInt16()I
    .locals 1

    const/4 v0, 0x4

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readFromBinaryData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUInt32()J
    .locals 2

    const/16 v0, 0x8

    .line 36
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readFromBinaryData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt8()S
    .locals 2

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketParser;->readFromBinaryData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
