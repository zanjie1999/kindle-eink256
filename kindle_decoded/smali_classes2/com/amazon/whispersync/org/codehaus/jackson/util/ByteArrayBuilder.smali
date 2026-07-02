.class public final Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field static final DEFAULT_BLOCK_ARRAY_SIZE:I = 0x28

.field private static final INITIAL_BLOCK_SIZE:I = 0x1f4

.field private static final MAX_BLOCK_SIZE:I = 0x40000

.field private static final NO_BYTES:[B


# instance fields
.field private final _bufferRecycler:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

.field private _currBlock:[B

.field private _currBlockPtr:I

.field private final _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 37
    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    const/16 v0, 0x1f4

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 79
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    if-nez p1, :cond_0

    .line 81
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    goto :goto_0

    .line 83
    :cond_0
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    :goto_0
    return-void
.end method

.method private _allocMore()V
    .locals 3

    .line 275
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    .line 283
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    const/high16 v0, 0x40000

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 3

    .line 112
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public appendThreeBytes(I)V
    .locals 4

    .line 131
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 132
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 133
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 134
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x10

    .line 136
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 137
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    :goto_0
    return-void
.end method

.method public appendTwoBytes(I)V
    .locals 4

    .line 120
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 121
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 122
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    .line 124
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public completeAndCoalesce(I)[B
    .locals 0

    .line 214
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 215
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public finishCurrentSegment()[B
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getCurrentSegment()[B
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public getCurrentSegmentLength()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    return v0
.end method

.method public release()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    if-eqz v1, :cond_0

    .line 105
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 90
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public resetAndGetFirstSegment()[B
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    .line 188
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    return-object v0
.end method

.method public setCurrentSegmentLength(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    return-void
.end method

.method public toByteArray()[B
    .locals 7

    .line 148
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-object v0

    .line 154
    :cond_0
    new-array v1, v0, [B

    .line 157
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 158
    array-length v6, v5

    .line 159
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v4, v2

    if-ne v4, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    :cond_2
    return-object v1

    .line 165
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: total len assumed to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", copied "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v0, v0

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    sub-int/2addr v0, v1

    .line 246
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 250
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    sub-int/2addr p3, v0

    :cond_0
    if-gtz p3, :cond_1

    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    goto :goto_0
.end method
