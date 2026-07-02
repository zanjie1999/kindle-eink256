.class public abstract Lorg/spongycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public static add([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 15
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 17
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 18
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 20
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 21
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 23
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 24
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 26
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 27
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 29
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 30
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 32
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 33
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 35
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 36
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 74
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 75
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 77
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 78
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 80
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 81
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 83
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 84
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 86
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 87
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 89
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 90
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 92
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 93
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 95
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 96
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addTo([II[III)I
    .locals 9

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p4, p1, 0x0

    .line 164
    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 165
    aput v4, p2, p4

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 167
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 168
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 170
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 171
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 173
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 174
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    .line 176
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 177
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x5

    .line 179
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 180
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x6

    .line 182
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 183
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x7

    .line 185
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 186
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p1, p0

    return p1
.end method

.method public static addTo([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 134
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 135
    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 137
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 138
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 140
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 141
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 143
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 144
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 146
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 147
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 149
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 150
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 152
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 153
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 155
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 156
    aput p0, p1, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addToEachOther([II[II)I
    .locals 11

    add-int/lit8 v0, p1, 0x0

    .line 194
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 195
    aput v6, p0, v0

    .line 196
    aput v6, p2, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x1

    .line 198
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 199
    aput v6, p0, v5

    .line 200
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x2

    .line 202
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 203
    aput v6, p0, v5

    .line 204
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x3

    .line 206
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 207
    aput v6, p0, v5

    .line 208
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x4

    .line 210
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 211
    aput v6, p0, v5

    .line 212
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x5

    .line 214
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 215
    aput v6, p0, v5

    .line 216
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x6

    .line 218
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x6

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 219
    aput v6, p0, v5

    .line 220
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 p1, p1, 0x7

    .line 222
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x7

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v3, v1

    .line 223
    aput v3, p0, p1

    .line 224
    aput v3, p2, p3

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 253
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    .line 260
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 269
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 279
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 284
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 286
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 288
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 289
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 281
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 298
    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    .line 306
    aget p0, p0, v0

    ushr-int/2addr p0, p1

    goto :goto_0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 327
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 328
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 313
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 314
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 339
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 345
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 357
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 32

    add-int/lit8 v0, p3, 0x0

    .line 438
    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 439
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 440
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 441
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 442
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    .line 443
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    .line 444
    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v14

    .line 445
    aget v14, p2, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p1, 0x0

    move-wide/from16 p2, v14

    .line 448
    aget v14, p0, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    mul-long v19, v14, v0

    const-wide/16 v21, 0x0

    add-long v2, v19, v21

    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v0

    long-to-int v0, v2

    .line 450
    aput v0, p4, v16

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v25, v14, v4

    add-long v1, v1, v25

    add-int/lit8 v3, p5, 0x1

    move-wide/from16 v25, v4

    long-to-int v4, v1

    .line 453
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v6

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x2

    long-to-int v4, v1

    .line 456
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v8

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x3

    long-to-int v4, v1

    .line 459
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v10

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x4

    long-to-int v4, v1

    .line 462
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v12

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v1

    .line 465
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v17

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v1

    .line 468
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v14, v14, p2

    add-long/2addr v1, v14

    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v1

    .line 471
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    add-int/lit8 v3, p5, 0x8

    long-to-int v2, v1

    .line 473
    aput v2, p4, v3

    const/4 v1, 0x1

    move/from16 v2, p5

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    add-int/2addr v2, v1

    add-int v4, p1, v3

    .line 479
    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    mul-long v23, v4, v19

    add-int/lit8 v16, v2, 0x0

    .line 480
    aget v1, p4, v16

    int-to-long v0, v1

    and-long/2addr v0, v14

    add-long v23, v23, v0

    add-long v0, v23, v21

    long-to-int v14, v0

    .line 481
    aput v14, p4, v16

    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    mul-long v15, v4, v25

    add-int/lit8 v27, v2, 0x1

    .line 483
    aget v14, p4, v27

    move-wide/from16 v28, v12

    int-to-long v12, v14

    const-wide v23, 0xffffffffL

    and-long v12, v12, v23

    add-long/2addr v15, v12

    add-long/2addr v0, v15

    long-to-int v12, v0

    .line 484
    aput v12, p4, v27

    const/16 v12, 0x20

    ushr-long/2addr v0, v12

    mul-long v13, v4, v6

    add-int/lit8 v15, v2, 0x2

    .line 486
    aget v12, p4, v15

    move-wide/from16 v30, v6

    int-to-long v6, v12

    and-long v6, v6, v23

    add-long/2addr v13, v6

    add-long/2addr v0, v13

    long-to-int v6, v0

    .line 487
    aput v6, p4, v15

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    mul-long v12, v4, v8

    add-int/lit8 v7, v2, 0x3

    .line 489
    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v23

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    .line 490
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v12, v4, v10

    add-int/lit8 v7, v2, 0x4

    .line 492
    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v23

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    .line 493
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v12, v4, v28

    add-int/lit8 v7, v2, 0x5

    .line 495
    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v23

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    .line 496
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v14, v4, v17

    add-int/lit8 v7, v2, 0x6

    .line 498
    aget v12, p4, v7

    int-to-long v12, v12

    and-long v12, v12, v23

    add-long/2addr v14, v12

    add-long/2addr v0, v14

    long-to-int v12, v0

    .line 499
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v4, v4, p2

    add-int/lit8 v7, v2, 0x7

    .line 501
    aget v12, p4, v7

    int-to-long v12, v12

    and-long v12, v12, v23

    add-long/2addr v4, v12

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 502
    aput v4, p4, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v4, v2, 0x8

    long-to-int v1, v0

    .line 504
    aput v1, p4, v4

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v28

    move-wide/from16 v6, v30

    const/16 v0, 0x20

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 35

    const/4 v0, 0x0

    .line 367
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 368
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 369
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 370
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 371
    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    .line 372
    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    const/4 v10, 0x6

    .line 373
    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    const/16 v23, 0x7

    .line 374
    aget v5, p1, v23

    move-wide/from16 v25, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    .line 377
    aget v5, p0, v0

    move-wide/from16 v27, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    mul-long v29, v10, v1

    const-wide/16 v31, 0x0

    add-long v3, v29, v31

    long-to-int v5, v3

    .line 379
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    mul-long v29, v10, v6

    add-long v3, v3, v29

    long-to-int v5, v3

    const/16 v24, 0x1

    .line 382
    aput v5, p2, v24

    ushr-long/2addr v3, v0

    mul-long v29, v10, v20

    add-long v3, v3, v29

    long-to-int v5, v3

    const/16 v19, 0x2

    .line 385
    aput v5, p2, v19

    ushr-long/2addr v3, v0

    mul-long v29, v10, v12

    add-long v3, v3, v29

    long-to-int v5, v3

    const/16 v18, 0x3

    .line 388
    aput v5, p2, v18

    ushr-long/2addr v3, v0

    mul-long v18, v10, v14

    add-long v3, v3, v18

    long-to-int v5, v3

    const/16 v16, 0x4

    .line 391
    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v18, v10, v8

    add-long v3, v3, v18

    long-to-int v5, v3

    .line 394
    aput v5, p2, v17

    ushr-long/2addr v3, v0

    mul-long v16, v10, v25

    add-long v3, v3, v16

    long-to-int v5, v3

    const/16 v16, 0x6

    .line 397
    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v10, v10, v27

    add-long/2addr v3, v10

    long-to-int v5, v3

    .line 400
    aput v5, p2, v23

    ushr-long/2addr v3, v0

    long-to-int v4, v3

    const/16 v3, 0x8

    .line 402
    aput v4, p2, v3

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v3, :cond_0

    .line 407
    aget v4, p0, v5

    int-to-long v10, v4

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    mul-long v18, v10, v1

    add-int/lit8 v4, v5, 0x0

    .line 408
    aget v3, p2, v4

    move-wide/from16 v22, v1

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v31

    long-to-int v3, v0

    .line 409
    aput v3, p2, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v6

    add-int/lit8 v18, v5, 0x1

    .line 411
    aget v2, p2, v18

    move-wide/from16 v29, v6

    int-to-long v6, v2

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v2, v0

    .line 412
    aput v2, p2, v18

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v20

    add-int/lit8 v6, v5, 0x2

    .line 414
    aget v7, p2, v6

    move-wide/from16 v33, v8

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 415
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v12

    add-int/lit8 v6, v5, 0x3

    .line 417
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 418
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v14

    add-int/lit8 v6, v5, 0x4

    .line 420
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 421
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v8, v10, v33

    add-int/lit8 v3, v5, 0x5

    .line 423
    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v8, v6

    add-long/2addr v0, v8

    long-to-int v4, v0

    .line 424
    aput v4, p2, v3

    ushr-long/2addr v0, v2

    mul-long v3, v10, v25

    add-int/lit8 v6, v5, 0x6

    .line 426
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 427
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v10, v10, v27

    add-int/lit8 v3, v5, 0x7

    .line 429
    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v10, v6

    add-long/2addr v0, v10

    long-to-int v4, v0

    .line 430
    aput v4, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v5, v5, 0x8

    long-to-int v1, v0

    .line 432
    aput v1, p2, v5

    move/from16 v5, v18

    move-wide/from16 v1, v22

    move-wide/from16 v6, v29

    move-wide/from16 v8, v33

    const/16 v0, 0x20

    const/16 v3, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 13

    move v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x0

    .line 606
    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    add-int/lit8 v8, p4, 0x0

    .line 607
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    add-int/lit8 v8, p6, 0x0

    long-to-int v9, v6

    .line 608
    aput v9, p5, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    .line 610
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    .line 611
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v6, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 612
    aput v5, p5, v4

    ushr-long v4, v6, v8

    add-int/lit8 v6, p2, 0x2

    .line 614
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    .line 615
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x2

    long-to-int v10, v4

    .line 616
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    .line 618
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    .line 619
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 620
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x4

    .line 622
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x4

    .line 623
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x4

    long-to-int v10, v4

    .line 624
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x5

    .line 626
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x5

    .line 627
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    .line 628
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x6

    .line 630
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x6

    .line 631
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x6

    long-to-int v10, v4

    .line 632
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x7

    .line 634
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v0, v0, v9

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x7

    .line 635
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x7

    long-to-int v1, v4

    .line 636
    aput v1, p5, v0

    ushr-long v0, v4, v8

    add-long/2addr v0, v9

    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 15

    move-object/from16 v0, p3

    move v1, p0

    move/from16 v2, p4

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    and-long v7, p1, v5

    mul-long v9, v3, v7

    add-int/lit8 v1, v2, 0x0

    .line 739
    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    const-wide/16 v11, 0x0

    add-long/2addr v9, v11

    long-to-int v13, v9

    .line 740
    aput v13, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr v9, v1

    ushr-long v13, p1, v1

    mul-long v3, v3, v13

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x1

    .line 743
    aget v8, v0, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    .line 744
    aput v3, v0, v7

    ushr-long v3, v9, v1

    add-int/lit8 v7, v2, 0x2

    .line 746
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    add-long/2addr v13, v8

    add-long/2addr v3, v13

    long-to-int v8, v3

    .line 747
    aput v8, v0, v7

    ushr-long/2addr v3, v1

    add-int/lit8 v7, v2, 0x3

    .line 749
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 750
    aput v5, v0, v7

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    const/4 v3, 0x4

    .line 752
    invoke-static {v1, v0, v2, v3}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long v0, v0, p0

    add-int/lit8 v4, p3, 0x0

    .line 761
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    .line 762
    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    .line 764
    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 765
    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 767
    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 768
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long v0, p0, v5

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    const/4 p1, 0x3

    .line 770
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 34

    const/4 v0, 0x0

    .line 510
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 511
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 512
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 513
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 514
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 515
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    .line 516
    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x7

    .line 517
    aget v2, p1, v2

    move-wide/from16 v19, v0

    int-to-long v0, v2

    and-long/2addr v0, v3

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v21

    const/4 v2, 0x0

    :goto_0
    const/16 v15, 0x8

    if-ge v2, v15, :cond_0

    .line 522
    aget v15, p0, v2

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long/2addr v0, v3

    mul-long v15, v0, v17

    add-int/lit8 v27, v2, 0x0

    move-wide/from16 v28, v13

    .line 523
    aget v13, p2, v27

    int-to-long v13, v13

    and-long/2addr v13, v3

    add-long/2addr v15, v13

    add-long v13, v15, v21

    long-to-int v15, v13

    .line 524
    aput v15, p2, v27

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    mul-long v30, v0, v5

    add-int/lit8 v16, v2, 0x1

    .line 526
    aget v15, p2, v16

    move-wide/from16 v32, v5

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 527
    aput v5, p2, v16

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v30, v0, v7

    add-int/lit8 v6, v2, 0x2

    .line 529
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 530
    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v30, v0, v9

    add-int/lit8 v6, v2, 0x3

    .line 532
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 533
    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v30, v0, v11

    add-int/lit8 v6, v2, 0x4

    .line 535
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 536
    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v30, v0, v28

    add-int/lit8 v6, v2, 0x5

    .line 538
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 539
    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v30, v0, v19

    add-int/lit8 v6, v2, 0x6

    .line 541
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v30, v30, v5

    add-long v13, v13, v30

    long-to-int v5, v13

    .line 542
    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v0, v0, v25

    add-int/lit8 v6, v2, 0x7

    .line 544
    aget v15, p2, v6

    move/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v0, v5

    add-long/2addr v13, v0

    long-to-int v0, v13

    .line 545
    aput v0, p2, v27

    const/16 v0, 0x20

    ushr-long v5, v13, v0

    add-int/lit8 v2, v2, 0x8

    .line 547
    aget v1, p2, v2

    int-to-long v13, v1

    and-long/2addr v13, v3

    move-wide/from16 v3, v23

    add-long v23, v3, v13

    add-long v5, v5, v23

    long-to-int v1, v5

    .line 548
    aput v1, p2, v2

    ushr-long v23, v5, v0

    move/from16 v2, v16

    move-wide/from16 v0, v25

    move-wide/from16 v13, v28

    move-wide/from16 v5, v32

    const-wide v3, 0xffffffffL

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v3, v23

    long-to-int v0, v3

    return v0
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    .line 675
    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v4, v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 676
    aput v6, p2, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    .line 678
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 679
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    .line 681
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 682
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    .line 684
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 685
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    .line 687
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 688
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    .line 690
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 691
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    .line 693
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 694
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x7

    .line 696
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v0, v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 697
    aput p1, p2, v6

    ushr-long p0, v4, p0

    long-to-int p1, p0

    return p1
.end method

.method public static square([II[II)V
    .locals 46

    add-int/lit8 v0, p1, 0x0

    .line 969
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x7

    :goto_0
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    .line 977
    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long v9, v9, v9

    add-int/lit8 v6, v6, -0x1

    add-int v7, p3, v6

    shl-int/lit8 v5, v5, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v13, v12

    or-int/2addr v5, v13

    .line 979
    aput v5, p2, v7

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v13, v12

    .line 980
    aput v13, p2, v5

    long-to-int v5, v9

    if-gtz v8, :cond_0

    mul-long v8, v0, v0

    shl-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    and-long/2addr v5, v2

    ushr-long v10, v8, v11

    or-long/2addr v5, v10

    add-int/lit8 v10, p3, 0x0

    long-to-int v11, v8

    .line 988
    aput v11, p2, v10

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v9, v8

    and-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, p1, 0x1

    .line 993
    aget v9, p0, v9

    int-to-long v11, v9

    and-long/2addr v11, v2

    add-int/lit8 v9, p3, 0x2

    .line 994
    aget v13, p2, v9

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v11, v0

    add-long/2addr v5, v15

    long-to-int v15, v5

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v8, v17, v8

    .line 999
    aput v8, p2, v16

    ushr-int/lit8 v8, v15, 0x1f

    ushr-long/2addr v5, v10

    add-long/2addr v13, v5

    add-int/lit8 v5, p1, 0x2

    .line 1004
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v15, p3, 0x3

    .line 1005
    aget v7, p2, v15

    move-wide/from16 v18, v11

    int-to-long v10, v7

    and-long/2addr v10, v2

    add-int/lit8 v7, p3, 0x4

    .line 1006
    aget v12, p2, v7

    move-wide/from16 v20, v10

    int-to-long v10, v12

    and-long/2addr v10, v2

    mul-long v22, v5, v0

    add-long v13, v13, v22

    long-to-int v12, v13

    shl-int/lit8 v22, v12, 0x1

    or-int v8, v22, v8

    .line 1010
    aput v8, p2, v9

    ushr-int/lit8 v8, v12, 0x1f

    const/16 v9, 0x20

    ushr-long v12, v13, v9

    mul-long v22, v5, v18

    add-long v12, v12, v22

    add-long v12, v20, v12

    ushr-long v20, v12, v9

    add-long v10, v10, v20

    and-long/2addr v12, v2

    add-int/lit8 v9, p1, 0x3

    .line 1017
    aget v9, p0, v9

    move-wide/from16 v20, v5

    int-to-long v4, v9

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    .line 1018
    aget v9, p2, v6

    move/from16 v22, v15

    int-to-long v14, v9

    and-long/2addr v14, v2

    add-int/lit8 v9, p3, 0x6

    move/from16 v24, v6

    .line 1019
    aget v6, p2, v9

    move/from16 v25, v7

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v26, v4, v0

    add-long v12, v12, v26

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v8

    .line 1023
    aput v3, p2, v22

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x20

    ushr-long/2addr v12, v3

    mul-long v28, v4, v18

    add-long v12, v12, v28

    add-long/2addr v10, v12

    ushr-long v12, v10, v3

    mul-long v28, v4, v20

    add-long v12, v12, v28

    add-long/2addr v14, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    ushr-long v26, v14, v3

    add-long v6, v6, v26

    and-long/2addr v14, v12

    add-int/lit8 v3, p1, 0x4

    .line 1032
    aget v3, p0, v3

    move/from16 v22, v9

    int-to-long v8, v3

    and-long/2addr v8, v12

    add-int/lit8 v3, p3, 0x7

    move-wide/from16 v28, v4

    .line 1033
    aget v4, p2, v3

    int-to-long v4, v4

    and-long/2addr v4, v12

    add-int/lit8 v30, p3, 0x8

    move/from16 v31, v3

    .line 1034
    aget v3, p2, v30

    move-wide/from16 v32, v4

    int-to-long v3, v3

    and-long/2addr v3, v12

    mul-long v12, v8, v0

    add-long/2addr v10, v12

    long-to-int v5, v10

    shl-int/lit8 v12, v5, 0x1

    or-int/2addr v2, v12

    .line 1038
    aput v2, p2, v25

    ushr-int/lit8 v2, v5, 0x1f

    const/16 v5, 0x20

    ushr-long/2addr v10, v5

    mul-long v12, v8, v18

    add-long/2addr v10, v12

    add-long/2addr v14, v10

    ushr-long v10, v14, v5

    mul-long v12, v8, v20

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    const-wide v10, 0xffffffffL

    and-long v12, v14, v10

    ushr-long v14, v6, v5

    mul-long v25, v8, v28

    add-long v14, v14, v25

    add-long v14, v32, v14

    and-long/2addr v6, v10

    ushr-long v25, v14, v5

    add-long v3, v3, v25

    and-long/2addr v14, v10

    add-int/lit8 v5, p1, 0x5

    .line 1049
    aget v5, p0, v5

    move-wide/from16 v32, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    add-int/lit8 v5, p3, 0x9

    move-wide/from16 v34, v3

    .line 1050
    aget v3, p2, v5

    int-to-long v3, v3

    and-long/2addr v3, v10

    add-int/lit8 v25, p3, 0xa

    move/from16 v36, v5

    .line 1051
    aget v5, p2, v25

    move-wide/from16 v37, v3

    int-to-long v3, v5

    and-long/2addr v3, v10

    mul-long v10, v8, v0

    add-long/2addr v12, v10

    long-to-int v5, v12

    shl-int/lit8 v10, v5, 0x1

    or-int/2addr v2, v10

    .line 1055
    aput v2, p2, v24

    ushr-int/lit8 v2, v5, 0x1f

    const/16 v5, 0x20

    ushr-long v10, v12, v5

    mul-long v12, v8, v18

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    ushr-long v10, v6, v5

    mul-long v12, v8, v20

    add-long/2addr v10, v12

    add-long/2addr v14, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    ushr-long v12, v14, v5

    mul-long v26, v8, v28

    add-long v12, v12, v26

    add-long v12, v34, v12

    and-long/2addr v14, v10

    ushr-long v26, v12, v5

    mul-long v34, v8, v32

    add-long v26, v26, v34

    add-long v26, v37, v26

    and-long/2addr v12, v10

    ushr-long v34, v26, v5

    add-long v3, v3, v34

    and-long v34, v26, v10

    add-int/lit8 v5, p1, 0x6

    .line 1068
    aget v5, p0, v5

    move-wide/from16 v37, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    add-int/lit8 v5, p3, 0xb

    move-wide/from16 v39, v3

    .line 1069
    aget v3, p2, v5

    int-to-long v3, v3

    and-long/2addr v3, v10

    add-int/lit8 v24, p3, 0xc

    move/from16 v41, v5

    .line 1070
    aget v5, p2, v24

    move-wide/from16 v42, v3

    int-to-long v3, v5

    and-long/2addr v3, v10

    mul-long v10, v8, v0

    add-long/2addr v6, v10

    long-to-int v5, v6

    shl-int/lit8 v10, v5, 0x1

    or-int/2addr v2, v10

    .line 1074
    aput v2, p2, v22

    ushr-int/lit8 v2, v5, 0x1f

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    mul-long v10, v8, v18

    add-long/2addr v6, v10

    add-long/2addr v14, v6

    ushr-long v6, v14, v5

    mul-long v10, v8, v20

    add-long/2addr v6, v10

    add-long/2addr v12, v6

    const-wide v10, 0xffffffffL

    and-long v6, v14, v10

    ushr-long v14, v12, v5

    mul-long v26, v8, v28

    add-long v14, v14, v26

    add-long v34, v34, v14

    and-long/2addr v12, v10

    ushr-long v14, v34, v5

    mul-long v26, v8, v32

    add-long v14, v14, v26

    add-long v14, v39, v14

    and-long v26, v34, v10

    ushr-long v34, v14, v5

    mul-long v39, v8, v37

    add-long v34, v34, v39

    add-long v34, v42, v34

    and-long/2addr v14, v10

    ushr-long v39, v34, v5

    add-long v3, v3, v39

    and-long v34, v34, v10

    const/16 v22, 0x7

    add-int/lit8 v5, p1, 0x7

    .line 1089
    aget v5, p0, v5

    move-wide/from16 v39, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    add-int/lit8 v5, p3, 0xd

    move-wide/from16 v42, v3

    .line 1090
    aget v3, p2, v5

    int-to-long v3, v3

    and-long/2addr v3, v10

    add-int/lit8 v22, p3, 0xe

    move/from16 p0, v5

    .line 1091
    aget v5, p2, v22

    move-wide/from16 v44, v3

    int-to-long v3, v5

    and-long/2addr v3, v10

    mul-long v0, v0, v8

    add-long/2addr v6, v0

    long-to-int v0, v6

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    .line 1095
    aput v1, p2, v31

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v5, v6, v1

    mul-long v10, v8, v18

    add-long/2addr v5, v10

    add-long/2addr v12, v5

    ushr-long v5, v12, v1

    mul-long v10, v8, v20

    add-long/2addr v5, v10

    add-long v5, v26, v5

    ushr-long v10, v5, v1

    mul-long v17, v8, v28

    add-long v10, v10, v17

    add-long/2addr v14, v10

    ushr-long v10, v14, v1

    mul-long v17, v8, v32

    add-long v10, v10, v17

    add-long v10, v34, v10

    ushr-long v17, v10, v1

    mul-long v19, v8, v37

    add-long v17, v17, v19

    move-wide/from16 v19, v10

    add-long v10, v42, v17

    ushr-long v17, v10, v1

    mul-long v8, v8, v39

    add-long v17, v17, v8

    add-long v7, v44, v17

    ushr-long v26, v7, v1

    add-long v3, v3, v26

    long-to-int v1, v12

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1107
    aput v0, p2, v30

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1110
    aput v0, p2, v36

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v14

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1113
    aput v0, p2, v25

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v1, v19

    long-to-int v2, v1

    shl-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    .line 1116
    aput v0, p2, v41

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1119
    aput v0, p2, v24

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1122
    aput v0, p2, p0

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1125
    aput v0, p2, v22

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xf

    .line 1127
    aget v2, p2, v1

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v2, v4

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1128
    aput v0, p2, v1

    return-void

    :cond_0
    move v7, v8

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 46

    const/4 v0, 0x0

    .line 805
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 813
    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long v10, v10, v10

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v13, v12

    or-int/2addr v7, v13

    .line 815
    aput v7, p1, v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v13, v12

    .line 816
    aput v13, p1, v6

    long-to-int v11, v10

    if-gtz v9, :cond_0

    mul-long v9, v1, v1

    shl-int/lit8 v6, v11, 0x1f

    int-to-long v11, v6

    and-long/2addr v11, v3

    ushr-long v13, v9, v8

    or-long/2addr v11, v13

    long-to-int v6, v9

    .line 824
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 829
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 830
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 835
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 840
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    .line 841
    aget v7, p1, v15

    move/from16 v18, v6

    int-to-long v5, v7

    and-long/2addr v5, v3

    const/4 v7, 0x4

    .line 842
    aget v15, p1, v7

    move-wide/from16 v20, v8

    int-to-long v7, v15

    and-long/2addr v7, v3

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v15, v13

    shl-int/lit8 v22, v15, 0x1

    or-int v18, v22, v18

    .line 846
    aput v18, p1, v10

    ushr-int/lit8 v10, v15, 0x1f

    ushr-long/2addr v13, v0

    mul-long v22, v11, v20

    add-long v13, v13, v22

    add-long/2addr v5, v13

    ushr-long v13, v5, v0

    add-long/2addr v7, v13

    and-long/2addr v5, v3

    const/4 v13, 0x3

    .line 853
    aget v14, p0, v13

    int-to-long v13, v14

    and-long/2addr v13, v3

    const/4 v15, 0x5

    .line 854
    aget v9, p1, v15

    move-wide/from16 v22, v1

    int-to-long v0, v9

    and-long/2addr v0, v3

    const/16 v24, 0x6

    .line 855
    aget v9, p1, v24

    move-wide/from16 v25, v0

    int-to-long v0, v9

    and-long/2addr v0, v3

    mul-long v27, v13, v22

    add-long v5, v5, v27

    long-to-int v9, v5

    shl-int/lit8 v27, v9, 0x1

    or-int v10, v27, v10

    const/16 v19, 0x3

    .line 859
    aput v10, p1, v19

    ushr-int/lit8 v10, v9, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v27, v13, v20

    add-long v5, v5, v27

    add-long/2addr v7, v5

    ushr-long v5, v7, v2

    mul-long v27, v13, v11

    add-long v5, v5, v27

    add-long v5, v25, v5

    and-long/2addr v7, v3

    ushr-long v25, v5, v2

    add-long v0, v0, v25

    and-long/2addr v5, v3

    const/4 v9, 0x4

    .line 868
    aget v2, p0, v9

    move/from16 v19, v10

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/4 v2, 0x7

    .line 869
    aget v15, p1, v2

    move-wide/from16 v27, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    const/16 v15, 0x8

    .line 870
    aget v2, p1, v15

    move-wide/from16 v29, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v31, v9, v22

    add-long v7, v7, v31

    long-to-int v2, v7

    shl-int/lit8 v31, v2, 0x1

    or-int v19, v31, v19

    const/16 v25, 0x4

    .line 874
    aput v19, p1, v25

    ushr-int/lit8 v19, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v31, v9, v20

    add-long v7, v7, v31

    add-long/2addr v5, v7

    ushr-long v7, v5, v2

    mul-long v31, v9, v11

    add-long v7, v7, v31

    add-long/2addr v0, v7

    and-long/2addr v5, v3

    ushr-long v7, v0, v2

    mul-long v31, v9, v27

    add-long v7, v7, v31

    add-long v7, v29, v7

    and-long/2addr v0, v3

    ushr-long v29, v7, v2

    add-long v13, v13, v29

    and-long/2addr v7, v3

    const/16 v18, 0x5

    .line 885
    aget v2, p0, v18

    move-wide/from16 v29, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v18, 0x9

    .line 886
    aget v2, p1, v18

    move-wide/from16 v31, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v33, 0xa

    .line 887
    aget v2, p1, v33

    move-wide/from16 v34, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v36, v9, v22

    add-long v5, v5, v36

    long-to-int v2, v5

    shl-int/lit8 v36, v2, 0x1

    or-int v19, v36, v19

    const/16 v26, 0x5

    .line 891
    aput v19, p1, v26

    ushr-int/lit8 v19, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v25, v9, v20

    add-long v5, v5, v25

    add-long/2addr v0, v5

    ushr-long v5, v0, v2

    mul-long v25, v9, v11

    add-long v5, v5, v25

    add-long/2addr v7, v5

    and-long/2addr v0, v3

    ushr-long v5, v7, v2

    mul-long v25, v9, v27

    add-long v5, v5, v25

    add-long v5, v31, v5

    and-long/2addr v7, v3

    ushr-long v25, v5, v2

    mul-long v31, v9, v29

    add-long v25, v25, v31

    add-long v25, v34, v25

    and-long/2addr v5, v3

    ushr-long v31, v25, v2

    add-long v13, v13, v31

    and-long v25, v25, v3

    .line 904
    aget v2, p0, v24

    move-wide/from16 v34, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v32, 0xb

    .line 905
    aget v2, p1, v32

    move-wide/from16 v36, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v38, 0xc

    .line 906
    aget v2, p1, v38

    move-wide/from16 v39, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v41, v9, v22

    add-long v0, v0, v41

    long-to-int v2, v0

    shl-int/lit8 v41, v2, 0x1

    or-int v19, v41, v19

    .line 910
    aput v19, p1, v24

    ushr-int/lit8 v19, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v41, v9, v20

    add-long v0, v0, v41

    add-long/2addr v7, v0

    ushr-long v0, v7, v2

    mul-long v41, v9, v11

    add-long v0, v0, v41

    add-long/2addr v5, v0

    and-long v0, v7, v3

    ushr-long v7, v5, v2

    mul-long v41, v9, v27

    add-long v7, v7, v41

    add-long v25, v25, v7

    and-long/2addr v5, v3

    ushr-long v7, v25, v2

    mul-long v41, v9, v29

    add-long v7, v7, v41

    add-long v7, v36, v7

    and-long v24, v25, v3

    ushr-long v36, v7, v2

    mul-long v41, v9, v34

    add-long v36, v36, v41

    add-long v36, v39, v36

    and-long/2addr v7, v3

    ushr-long v39, v36, v2

    add-long v13, v13, v39

    and-long v36, v36, v3

    const/16 v17, 0x7

    .line 925
    aget v2, p0, v17

    move-wide/from16 v39, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v26, 0xd

    .line 926
    aget v2, p1, v26

    move-wide/from16 v41, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v43, 0xe

    .line 927
    aget v2, p1, v43

    move-wide/from16 v44, v13

    int-to-long v13, v2

    and-long/2addr v3, v13

    mul-long v13, v9, v22

    add-long/2addr v0, v13

    long-to-int v2, v0

    shl-int/lit8 v13, v2, 0x1

    or-int v13, v13, v19

    const/4 v14, 0x7

    .line 931
    aput v13, p1, v14

    ushr-int/lit8 v13, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v19, v9, v20

    add-long v0, v0, v19

    add-long/2addr v5, v0

    ushr-long v0, v5, v2

    mul-long v11, v11, v9

    add-long/2addr v0, v11

    add-long v0, v24, v0

    ushr-long v11, v0, v2

    mul-long v19, v9, v27

    add-long v11, v11, v19

    add-long/2addr v7, v11

    ushr-long v11, v7, v2

    mul-long v19, v9, v29

    add-long v11, v11, v19

    add-long v11, v36, v11

    ushr-long v19, v11, v2

    mul-long v21, v9, v34

    add-long v19, v19, v21

    move-wide/from16 v21, v11

    add-long v11, v41, v19

    ushr-long v19, v11, v2

    mul-long v9, v9, v39

    add-long v19, v19, v9

    add-long v9, v44, v19

    ushr-long v19, v9, v2

    add-long v3, v3, v19

    long-to-int v6, v5

    shl-int/lit8 v5, v6, 0x1

    or-int/2addr v5, v13

    .line 943
    aput v5, p1, v15

    ushr-int/lit8 v5, v6, 0x1f

    long-to-int v1, v0

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr v0, v5

    .line 946
    aput v0, p1, v18

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 949
    aput v0, p1, v33

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v5, v21

    long-to-int v1, v5

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 952
    aput v0, p1, v32

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v11

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 955
    aput v0, p1, v38

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v9

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 958
    aput v0, p1, v26

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 961
    aput v0, p1, v43

    ushr-int/lit8 v0, v1, 0x1f

    const/16 v1, 0xf

    .line 963
    aget v5, p1, v1

    const/16 v2, 0x20

    shr-long v2, v3, v2

    long-to-int v3, v2

    add-int/2addr v5, v3

    const/4 v2, 0x1

    shl-int/lit8 v2, v5, 0x1

    or-int/2addr v0, v2

    .line 964
    aput v0, p1, v1

    return-void

    :cond_0
    move v7, v9

    move v8, v11

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    .line 1164
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    .line 1165
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 1167
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 1168
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 1170
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 1171
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 1173
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 1174
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 1176
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 1177
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 1179
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    .line 1180
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x6

    .line 1182
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x6

    long-to-int v6, v0

    .line 1183
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 1185
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x7

    long-to-int p0, v0

    .line 1186
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p1, p0

    return p1
.end method

.method public static sub([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1134
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1135
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1137
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1138
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1140
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1141
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1143
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1144
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1146
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1147
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1149
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1150
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1152
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1153
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 1155
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1156
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static subFrom([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1224
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1225
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1227
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1228
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1230
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1231
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1233
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1234
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1236
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1237
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1239
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1240
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1242
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1243
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 1245
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1246
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1286
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    .line 1289
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1297
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1298
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1299
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1300
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1301
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1302
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1303
    aput v0, p0, v1

    const/4 v1, 0x7

    .line 1304
    aput v0, p0, v1

    return-void
.end method
