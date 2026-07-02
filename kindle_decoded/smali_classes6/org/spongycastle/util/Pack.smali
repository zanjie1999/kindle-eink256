.class public abstract Lorg/spongycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public static bigEndianToInt([BI)I
    .locals 2

    .line 7
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    .line 8
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 10
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2

    const/4 v0, 0x0

    .line 16
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 18
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 4

    .line 56
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 57
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 32
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 33
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 34
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    .line 35
    aput-byte p0, p1, p2

    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2

    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 49
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 135
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 136
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 137
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 138
    aput-byte p0, p1, p2

    return-void
.end method

.method public static littleEndianToInt([BI)I
    .locals 2

    .line 101
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 102
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 103
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 104
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    .line 79
    invoke-static {v1, p2, p3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    .line 80
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method
