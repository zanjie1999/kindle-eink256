.class public Lcom/amazon/rma/rs/encoding/BitPacker;
.super Ljava/lang/Object;
.source "BitPacker.java"


# instance fields
.field private current:I

.field private numUsedBits:I

.field private final stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private incrementUsage()V
    .locals 2

    .line 83
    iget v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    .line 87
    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    iget p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    const/4 v0, 0x1

    iget v1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/amazon/rma/rs/encoding/BitPacker;->incrementUsage()V

    return-void
.end method

.method public addTrue(I)V
    .locals 4

    .line 34
    iget v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    const/16 v1, 0x8

    rsub-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    if-gt v2, p1, :cond_0

    rsub-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 36
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    iput v3, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    .line 38
    iput v3, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    :cond_0
    :goto_0
    if-lt p1, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 45
    iget v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    .line 47
    :cond_2
    iget p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    const/4 v0, 0x1

    iget v1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    .line 48
    invoke-direct {p0}, Lcom/amazon/rma/rs/encoding/BitPacker;->incrementUsage()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    .line 57
    iput v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    return-void
.end method

.method public getSize()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 77
    iget p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->numUsedBits:I

    if-lez p1, :cond_0

    .line 78
    iget p1, p0, Lcom/amazon/rma/rs/encoding/BitPacker;->current:I

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return-void
.end method
