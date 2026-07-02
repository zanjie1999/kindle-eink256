.class public Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;
.super Ljava/lang/Object;
.source "ByteBufferChainMessageImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/ByteBufferBackedMessage;
.implements Lamazon/whispersync/communication/Message;


# static fields
.field public static final MAX_BYTE_BUFFER_BYTES_FROM_INPUTSTREAM:I = 0x4000

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

.field private mPayloadSize:I

.field private mPreviousPayload:Ljava/io/InputStream;

.field private mSavedPositions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ByteBufferChainMessageImpl"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/Message;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    .line 67
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->appendPayload(Lamazon/whispersync/communication/Message;)V

    .line 69
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 63
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBufferChain cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    .line 74
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->appendPayload(Ljava/io/InputStream;I)I

    .line 76
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    .line 49
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 50
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    return-void
.end method

.method public constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    .line 54
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>([Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 55
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    return-void
.end method

.method private calculatePayloadSize()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getDataSize()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mPayloadSize:I

    return-void
.end method

.method private enforceSavedPositions()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message can\'t be modified once getPayload is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetByteBufferChain()V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->loadSavedPositions()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->savePositions()V

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mSavedPositions:Z

    return-void
.end method


# virtual methods
.method public appendPayload(Ljava/io/InputStream;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string/jumbo v4, "payloadBytes"

    const-string v5, "appendPayload"

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->enforceSavedPositions()V

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    if-lt v3, v6, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x5

    .line 161
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 162
    iget-object v12, v1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v12, v2, v3}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Ljava/io/InputStream;I)I

    move-result v12

    if-lez v12, :cond_0

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    .line 167
    :cond_0
    sget-object v13, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v14, "finished appending"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "bytesRead"

    aput-object v16, v15, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v6

    const-string v16, "availableBytes"

    aput-object v16, v15, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v8

    const-string v0, "mByteBufferChain.getDataSize"

    aput-object v0, v15, v7

    iget-object v0, v1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getDataSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v11

    const/4 v0, 0x6

    aput-object v4, v15, v0

    const/4 v0, 0x7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v0

    invoke-virtual {v13, v5, v14, v15}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    move-exception v0

    .line 173
    sget-object v12, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v11, v11, [Ljava/lang/Object;

    const-string v13, "inputStream"

    aput-object v13, v11, v10

    aput-object v2, v11, v6

    aput-object v4, v11, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v8

    aput-object v0, v11, v7

    const-string v2, "IOException when reading data from InputStream"

    invoke-virtual {v12, v5, v2, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    throw v0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Payload bytes can\'t be 0 or negative. payloadBytes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendPayload(Lamazon/whispersync/communication/Message;)V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->enforceSavedPositions()V

    .line 112
    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    instance-of v0, p1, Lcom/amazon/whispersync/communication/ByteBufferBackedMessage;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    check-cast p1, Lcom/amazon/whispersync/communication/ByteBufferBackedMessage;

    invoke-interface {p1}, Lcom/amazon/whispersync/communication/ByteBufferBackedMessage;->getByteBufferChain()Lcom/amazon/whispersync/communication/ByteBufferChain;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Lcom/amazon/whispersync/communication/ByteBufferChain;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/amazon/whispersync/communication/InputStreamMessageImpl;

    if-eqz v0, :cond_3

    .line 123
    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayload()Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x4000

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->appendPayload(Ljava/io/InputStream;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStreamMessageImpl has more bytes than our limit. Can\'t make copy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IOException when reading data from InputStreamMessageImpl"

    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 137
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message is not backed up by ByteBuffers or InputStream. Something wrong here."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_4
    sget-object p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "appendPayload"

    const-string v2, "attempting to append a Message with zero content"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public appendPayload(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->enforceSavedPositions()V

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 190
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    goto :goto_0

    .line 192
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "appendPayload"

    const-string v2, "attempting to append a ByteBuffer with zero content"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 289
    :cond_1
    const-class v2, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 292
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    .line 293
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    if-nez v2, :cond_3

    .line 294
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    if-eqz p1, :cond_4

    return v1

    .line 297
    :cond_3
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public extractPayload()Lamazon/whispersync/communication/Message;
    .locals 2

    .line 220
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChain;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/communication/ByteBufferChain;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    .line 221
    new-instance v1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    return-object v1
.end method

.method public getByteBufferChain()Lcom/amazon/whispersync/communication/ByteBufferChain;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    return-object v0
.end method

.method public getByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getInputStream()Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getOutputStream()Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/io/InputStream;
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mPreviousPayload:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 247
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unconsumed bytes found in previously returned payload. Not allowed to process multiple InputStreams returned from getPayload concurrently."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "getPayload"

    const-string/jumbo v3, "unexpected exception while trying to find the size of previously returned payload"

    invoke-virtual {v1, v0, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->resetByteBufferChain()V

    .line 260
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getInputStream()Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mPreviousPayload:Ljava/io/InputStream;

    return-object v0
.end method

.method public getPayloadSize()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mPayloadSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public prependPayload(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->enforceSavedPositions()V

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->prepend(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 203
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->calculatePayloadSize()V

    goto :goto_0

    .line 205
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "prependPayload"

    const-string v2, "attempting to prepend a ByteBuffer with zero content"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteBufferChainMessageImpl [mByteBufferChain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->mByteBufferChain:Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
