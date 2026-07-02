.class public Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;,
        Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    }
.end annotation


# static fields
.field public static final DEFAULT_WRITE_CONCAT_BUFFER_LEN:I = 0x7d0


# instance fields
.field protected final _byteBuffers:[[B

.field protected final _charBuffers:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    .line 48
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    return-void
.end method

.method private final balloc(I)[B
    .locals 0

    .line 102
    new-array p1, p1, [B

    return-object p1
.end method

.method private final calloc(I)[C
    .locals 0

    .line 107
    new-array p1, p1, [C

    return-object p1
.end method


# virtual methods
.method public final allocByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
    .locals 3

    .line 54
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 57
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$000(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->balloc(I)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 59
    aput-object p1, v1, v0

    :goto_0
    return-object v2
.end method

.method public final allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object p1

    return-object p1
.end method

.method public final allocCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .locals 3

    .line 76
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v0

    if-le v0, p2, :cond_0

    .line 77
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result p2

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 81
    array-length v2, v1

    if-ge v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 84
    aput-object p2, v0, p1

    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->calloc(I)[C

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final releaseByteBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method public final releaseCharBuffer(Lcom/amazon/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method
