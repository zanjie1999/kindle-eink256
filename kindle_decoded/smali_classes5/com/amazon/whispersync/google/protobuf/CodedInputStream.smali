.class public final Lcom/amazon/whispersync/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->sizeLimit:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->sizeLimit:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iput p2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    neg-int p1, p2

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/amazon/whispersync/google/protobuf/CodedInputStream;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/amazon/whispersync/google/protobuf/CodedInputStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/amazon/whispersync/google/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/amazon/whispersync/google/protobuf/CodedInputStream;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    :goto_0
    return-void
.end method

.method private refillBuffer(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iput v4, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v0, :cond_6

    if-lt v0, v1, :cond_6

    if-ne v0, v1, :cond_4

    iput v4, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-nez p1, :cond_3

    return v4

    :cond_3
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->sizeLimit:I

    if-gt p1, v0, :cond_5

    if-ltz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public getBytesUntilLimit()I
    .locals 3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    return v0

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/ByteString;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ByteString;

    return-object v0

    :cond_0
    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFrom([BII)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFrom([B)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p2, p0, p3}, Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, p0, p2}, Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionDepth:I

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_9

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    if-gt v2, v3, :cond_8

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt p1, v3, :cond_0

    new-array v0, p1, [B

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v2, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    return-object v0

    :cond_0
    const/16 v3, 0x1000

    if-ge p1, v3, :cond_2

    new-array v0, p1, [B

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    sub-int v3, p1, v2

    iget v5, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v3, v5, :cond_1

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v2, v3

    iput v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    return-object v0

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iput v4, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    iput v4, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v2, v1

    sub-int v0, p1, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lez v0, :cond_6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    iget-object v9, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_3

    const/4 v9, -0x1

    goto :goto_3

    :cond_3
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_3
    if-eq v9, v10, :cond_4

    iget v10, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v8, v9

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_5
    sub-int/2addr v0, v6

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-array p1, p1, [B

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v0, v1, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v2, v1

    goto :goto_4

    :cond_7
    return-object p1

    :cond_8
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v5

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    const-string v2, "UTF-8"

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {v1, v3, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->lastTag:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->lastTag:I

    return v0

    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, v0

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->recursionLimit:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSizeLimit(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->sizeLimit:I

    iput p1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->sizeLimit:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    return v1

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipMessage()V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readInt32()I

    return v1
.end method

.method public skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->currentLimit:I

    if-gt v2, v3, :cond_2

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_1

    :cond_0
    sub-int v1, v0, v1

    iput v0, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    sub-int v2, p1, v1

    iget v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v2, v3, :cond_1

    add-int/2addr v1, v3

    iput v3, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->bufferPos:I

    :goto_1
    return-void

    :cond_2
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
