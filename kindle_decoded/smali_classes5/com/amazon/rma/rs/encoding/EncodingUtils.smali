.class public final Lcom/amazon/rma/rs/encoding/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUVIntSizeInBytes(I)I
    .locals 2

    const/4 v0, 0x5

    if-gez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ge p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v1, 0x4000

    if-ge p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v1, 0x200000

    if-ge p0, v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v1, 0x10000000

    if-ge p0, v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v0
.end method

.method public static getUVLongSizeInBytes(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const-wide/16 v0, 0x80

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/16 v0, 0x4000

    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/32 v0, 0x200000

    cmp-long v2, p0, v0

    if-gez v2, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/32 v0, 0x10000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide v0, 0x800000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-wide v0, 0x40000000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-wide/high16 v0, 0x2000000000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-wide/high16 v0, 0x100000000000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const/16 p0, 0x9

    return p0
.end method

.method public static getVIntSizeInBytes(I)I
    .locals 1

    const/16 v0, -0x40

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, -0x2000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x1fff

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x100000

    if-lt p0, v0, :cond_2

    const v0, 0xfffff

    if-gt p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x8000000

    if-lt p0, v0, :cond_3

    const v0, 0x7ffffff

    if-gt p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static getVLongSizeInBytes(J)I
    .locals 3

    const-wide/16 v0, -0x40

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x3f

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x2000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x1fff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x100000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    const-wide/32 v0, 0xfffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x8000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_3

    const-wide/32 v0, 0x7ffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x400000000L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_4

    const-wide v0, 0x3ffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x20000000000L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_5

    const-wide v0, 0x1ffffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x1000000000000L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_6

    const-wide v0, 0xffffffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x80000000000000L

    cmp-long v2, p0, v0

    if-ltz v2, :cond_7

    const-wide v0, 0x7fffffffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_8

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p0, v0

    if-gtz v2, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static timestampToTenthsOfSeconds(J)J
    .locals 2

    const-wide/16 v0, 0x64

    .line 116
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static writeString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 127
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 128
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public static writeUVInt(Ljava/io/DataOutput;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 140
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7f

    .line 143
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public static writeUVLong(Ljava/io/DataOutput;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 155
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    .line 158
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public static writeVInt(Ljava/io/DataOutput;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 168
    invoke-static {p0, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public static writeVLong(Ljava/io/DataOutput;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    .line 178
    invoke-static {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    return-void
.end method
