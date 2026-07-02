.class public Lcom/amazon/whispersync/communication/ByteBufferChain;
.super Ljava/lang/Object;
.source "ByteBufferChain.java"


# static fields
.field static final MAX_BUFFERS_IN_TOSTRING:I = 0x1e

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mBufferArray:[Ljava/nio/ByteBuffer;

.field private final mBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPositions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ByteBufferChain"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ByteBufferChain;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 43
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v0, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    aput-object v1, v2, v0

    .line 72
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 79
    :cond_1
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    return-void
.end method

.method public constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 57
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/io/InputStream;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 362
    new-array v1, p2, [B

    .line 363
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 366
    invoke-static {v1, v2, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 367
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 369
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/communication/ByteBufferChain;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bytesRead"

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "upperBoundSize"

    aput-object v2, v3, v0

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const-string p2, "append"

    const-string v0, "finished appending"

    invoke-virtual {v1, p2, v0, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 358
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size upper bound cannot be 0 or negative. upperBoundSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Lcom/amazon/whispersync/communication/ByteBufferChain;)Lcom/amazon/whispersync/communication/ByteBufferChain;
    .locals 3

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ByteBufferChain;->getDataSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    sget-object p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "append"

    const-string v2, "attempting to append a ByteBufferChain with zero content; skipping"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 131
    iget-object v0, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/communication/ByteBufferChain;->append(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t append null ByteBufferChain. Chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;
    .locals 3

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t append null or empty ByteBuffer. newData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 328
    :cond_1
    const-class v2, Lcom/amazon/whispersync/communication/ByteBufferChain;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 331
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/communication/ByteBufferChain;

    .line 332
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    if-nez v2, :cond_3

    .line 333
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    if-eqz p1, :cond_4

    return v1

    .line 336
    :cond_3
    iget-object p1, p1, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getByteBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBufferArray:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataSize()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getInputStream()Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;
    .locals 1

    .line 167
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ByteBufferChainInputStream;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    return-object v0
.end method

.method public getOutputStream()Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;
    .locals 1

    .line 177
    new-instance v0, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ByteBufferChainOutputStream;-><init>(Lcom/amazon/whispersync/communication/ByteBufferChain;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public loadSavedPositions()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadSavedPositionsForAll cannot be called without a matching savePositionsForAll being called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark()V
    .locals 2

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepend(Ljava/nio/ByteBuffer;)Lcom/amazon/whispersync/communication/ByteBufferChain;
    .locals 3

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t prepend null or empty ByteBuffer. newData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePositions()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mSavedPositions:[I

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shrinkLimitFromEnd(I)Z
    .locals 5

    if-ltz p1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez p1, :cond_1

    if-ltz v0, :cond_1

    .line 277
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p1, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, p1

    .line 279
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 273
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not shrink negative number of bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipBytes(I)Z
    .locals 5

    if-ltz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 253
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p1, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, p1

    .line 256
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 250
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not skip negative number of bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ByteBufferChain [mBuffers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 292
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x1e

    if-eqz v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/communication/ByteBufferChain;->mBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more ...)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
