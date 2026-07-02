.class public Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# static fields
.field public static final CHARSET_UTF:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mBinaryData:Ljava/io/ByteArrayOutputStream;

.field private mHasError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 15
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->CHARSET_UTF:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mBinaryData:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mHasError:Z

    return-void
.end method

.method private writeToBinaryData(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, v2, p2

    .line 97
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mBinaryData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mHasError:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public getPacketString()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mBinaryData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mHasError:Z

    return v0
.end method

.method public writeBytes([B)V
    .locals 1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mBinaryData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mHasError:Z

    :goto_0
    return-void
.end method

.method public writeCharArray(Ljava/lang/String;J)V
    .locals 0

    .line 53
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mBinaryData:Ljava/io/ByteArrayOutputStream;

    sget-object p3, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->CHARSET_UTF:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->mHasError:Z

    :goto_0
    return-void
.end method

.method public writeUInt16(I)V
    .locals 3

    const/4 v0, 0x4

    .line 27
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 28
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeToBinaryData(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public writeUInt32(J)V
    .locals 3

    const/16 v0, 0x8

    .line 35
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 36
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeToBinaryData(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public writeUInt8(S)V
    .locals 3

    const/4 v0, 0x2

    .line 43
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 44
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 45
    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/PacketWriter;->writeToBinaryData(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
