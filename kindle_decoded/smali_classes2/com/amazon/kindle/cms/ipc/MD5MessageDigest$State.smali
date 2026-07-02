.class final Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;
.super Ljava/lang/Object;
.source "MD5MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/MD5MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# static fields
.field private static final s_padding:[B


# instance fields
.field private final m_digest:[I

.field private final m_pending:[I

.field private m_total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 380
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->s_padding:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 124
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 131
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    return-void

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
    .end array-data
.end method

.method constructor <init>(Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 137
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 138
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    .line 139
    iget-wide v1, p1, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    iput-wide v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    .line 141
    iget-object v1, p1, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 142
    iget-object p1, p1, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    array-length v1, v0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 147
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 148
    iput-object v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x40

    if-ge v1, v0, :cond_2

    .line 158
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->put(BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    const p1, 0x67452301

    aput p1, v0, v1

    const p1, -0x10325477

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const v1, -0x67452302

    aput v1, v0, p1

    const/4 p1, 0x3

    const v1, 0x10325476

    aput v1, v0, p1

    :cond_2
    return-void
.end method

.method private static MD5STEP_1(IIIIII)I
    .locals 0

    xor-int/2addr p2, p3

    and-int/2addr p2, p1

    xor-int/2addr p2, p3

    add-int/2addr p0, p2

    add-int/2addr p0, p4

    .line 361
    invoke-static {p0, p5}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->rotlFixed(II)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method private static MD5STEP_2(IIIIII)I
    .locals 1

    xor-int v0, p1, p2

    and-int/2addr p3, v0

    xor-int/2addr p2, p3

    add-int/2addr p0, p2

    add-int/2addr p0, p4

    .line 365
    invoke-static {p0, p5}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->rotlFixed(II)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method private static MD5STEP_3(IIIIII)I
    .locals 0

    xor-int/2addr p2, p1

    xor-int/2addr p2, p3

    add-int/2addr p0, p2

    add-int/2addr p0, p4

    .line 369
    invoke-static {p0, p5}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->rotlFixed(II)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method private static MD5STEP_4(IIIIII)I
    .locals 0

    not-int p3, p3

    or-int/2addr p3, p1

    xor-int/2addr p2, p3

    add-int/2addr p0, p2

    add-int/2addr p0, p4

    .line 373
    invoke-static {p0, p5}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->rotlFixed(II)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method private get(I)B
    .locals 3

    .line 251
    div-int/lit8 v0, p1, 0x4

    .line 252
    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget p1, p1, v0

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x18

    :goto_0
    int-to-byte p1, p1

    return p1

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid byte index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget p1, p1, v0

    const/high16 v0, 0xff0000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x10

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget p1, p1, v0

    const v0, 0xff00

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    goto :goto_0
.end method

.method private pendingLength()I
    .locals 4

    .line 269
    iget-wide v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private put(BI)V
    .locals 3

    .line 230
    div-int/lit8 v0, p2, 0x4

    .line 231
    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    aput p1, p2, v0

    goto :goto_0

    .line 238
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget v1, p2, v0

    const v2, -0xff0001

    and-int/2addr v1, v2

    shl-int/lit8 p1, p1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, p2, v0

    goto :goto_0

    .line 241
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget v1, p2, v0

    const v2, -0xff01

    and-int/2addr v1, v2

    shl-int/lit8 p1, p1, 0x8

    const v2, 0xff00

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, p2, v0

    goto :goto_0

    .line 244
    :cond_3
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    aget v1, p2, v0

    and-int/lit16 v1, v1, -0x100

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, p2, v0

    :goto_0
    return-void
.end method

.method private static rotlFixed(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private transform([I)V
    .locals 33

    move-object/from16 v0, p0

    .line 274
    iget-object v1, v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v9, 0x1

    .line 275
    aget v16, v1, v9

    const/16 v17, 0x2

    .line 276
    aget v18, v1, v17

    const/16 v19, 0x3

    .line 277
    aget v10, v1, v19

    .line 279
    aget v1, p1, v2

    const v4, -0x28955b88

    add-int v7, v1, v4

    const/4 v8, 0x7

    move/from16 v4, v16

    move/from16 v5, v18

    move v6, v10

    invoke-static/range {v3 .. v8}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v20

    .line 280
    aget v1, p1, v9

    const v3, -0x173848aa

    add-int v14, v1, v3

    const/16 v15, 0xc

    move/from16 v11, v20

    move/from16 v12, v16

    move/from16 v13, v18

    invoke-static/range {v10 .. v15}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v3

    .line 281
    aget v1, p1, v17

    const v4, 0x242070db

    add-int v14, v1, v4

    const/16 v15, 0x11

    move/from16 v10, v18

    move v11, v3

    move/from16 v12, v20

    move/from16 v13, v16

    invoke-static/range {v10 .. v15}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v1

    .line 282
    aget v4, p1, v19

    const v5, -0x3e423112

    add-int v14, v4, v5

    const/16 v15, 0x16

    move/from16 v10, v16

    move v11, v1

    move v12, v3

    move/from16 v13, v20

    invoke-static/range {v10 .. v15}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v10

    const/4 v11, 0x4

    .line 283
    aget v4, p1, v11

    const v5, -0xa83f051

    add-int v24, v4, v5

    const/16 v25, 0x7

    move/from16 v21, v10

    move/from16 v22, v1

    move/from16 v23, v3

    invoke-static/range {v20 .. v25}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v12

    const/4 v13, 0x5

    .line 284
    aget v4, p1, v13

    const v5, 0x4787c62a

    add-int v7, v4, v5

    const/16 v8, 0xc

    move v4, v12

    move v5, v10

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v20

    const/4 v3, 0x6

    .line 285
    aget v4, p1, v3

    const v5, -0x57cfb9ed

    add-int v25, v4, v5

    const/16 v26, 0x11

    move/from16 v21, v1

    move/from16 v22, v20

    move/from16 v23, v12

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v1

    const/4 v4, 0x7

    .line 286
    aget v5, p1, v4

    const v6, -0x2b96aff

    add-int v25, v5, v6

    const/16 v26, 0x16

    move/from16 v21, v10

    move/from16 v22, v1

    move/from16 v23, v20

    move/from16 v24, v12

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v5

    const/16 v6, 0x8

    .line 287
    aget v7, p1, v6

    const v8, 0x698098d8

    add-int v30, v7, v8

    const/16 v31, 0x7

    move/from16 v26, v12

    move/from16 v27, v5

    move/from16 v28, v1

    move/from16 v29, v20

    invoke-static/range {v26 .. v31}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v7

    const/16 v8, 0x9

    .line 288
    aget v10, p1, v8

    const v12, -0x74bb0851

    add-int v24, v10, v12

    const/16 v25, 0xc

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v1

    invoke-static/range {v20 .. v25}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v10

    const/16 v12, 0xa

    .line 289
    aget v14, p1, v12

    const v15, -0xa44f

    add-int v31, v14, v15

    const/16 v32, 0x11

    move/from16 v27, v1

    move/from16 v28, v10

    move/from16 v29, v7

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v20

    const/16 v1, 0xb

    .line 290
    aget v14, p1, v1

    const v15, -0x76a32842

    add-int v31, v14, v15

    const/16 v32, 0x16

    move/from16 v27, v5

    move/from16 v28, v20

    move/from16 v29, v10

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v5

    const/16 v14, 0xc

    .line 291
    aget v15, p1, v14

    const v16, 0x6b901122

    add-int v25, v15, v16

    const/16 v26, 0x7

    move/from16 v22, v5

    move/from16 v23, v20

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v7

    const/16 v15, 0xd

    .line 292
    aget v16, p1, v15

    const v18, -0x2678e6d

    add-int v30, v16, v18

    const/16 v31, 0xc

    move/from16 v26, v10

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v20

    invoke-static/range {v26 .. v31}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v10

    const/16 v16, 0xe

    .line 293
    aget v18, p1, v16

    const v21, -0x5986bc72

    add-int v24, v18, v21

    const/16 v25, 0x11

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    invoke-static/range {v20 .. v25}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v18

    const/16 v20, 0xf

    .line 294
    aget v21, p1, v20

    const v22, 0x49b40821

    add-int v25, v21, v22

    const/16 v26, 0x16

    move/from16 v21, v5

    move/from16 v22, v18

    move/from16 v23, v10

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_1(IIIIII)I

    move-result v5

    .line 296
    aget v21, p1, v9

    const v22, -0x9e1da9e

    add-int v31, v21, v22

    const/16 v32, 0x5

    move/from16 v28, v5

    move/from16 v29, v18

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v7

    .line 297
    aget v21, p1, v3

    const v22, -0x3fbf4cc0

    add-int v25, v21, v22

    const/16 v26, 0x9

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v10

    .line 298
    aget v21, p1, v1

    const v22, 0x265e5a51

    add-int v30, v21, v22

    const/16 v31, 0xe

    move/from16 v26, v18

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v29, v5

    invoke-static/range {v26 .. v31}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v18

    .line 299
    aget v21, p1, v2

    const v22, -0x16493856

    add-int v31, v21, v22

    const/16 v32, 0x14

    move/from16 v27, v5

    move/from16 v28, v18

    move/from16 v29, v10

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v5

    .line 300
    aget v21, p1, v13

    const v22, -0x29d0efa3

    add-int v25, v21, v22

    const/16 v26, 0x5

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v18

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v7

    .line 301
    aget v21, p1, v12

    const v22, 0x2441453

    add-int v31, v21, v22

    const/16 v32, 0x9

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v18

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v10

    .line 302
    aget v21, p1, v20

    const v22, -0x275e197f

    add-int v25, v21, v22

    const/16 v26, 0xe

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v23, v7

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v18

    .line 303
    aget v21, p1, v11

    const v22, -0x182c0438

    add-int v25, v21, v22

    const/16 v26, 0x14

    move/from16 v21, v5

    move/from16 v22, v18

    move/from16 v23, v10

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v5

    .line 304
    aget v21, p1, v8

    const v22, 0x21e1cde6

    add-int v31, v21, v22

    const/16 v32, 0x5

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v18

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v7

    .line 305
    aget v21, p1, v16

    const v22, -0x3cc8f82a

    add-int v25, v21, v22

    const/16 v26, 0x9

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v10

    .line 306
    aget v21, p1, v19

    const v22, -0xb2af279

    add-int v31, v21, v22

    const/16 v32, 0xe

    move/from16 v27, v18

    move/from16 v28, v10

    move/from16 v29, v7

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v18

    .line 307
    aget v21, p1, v6

    const v22, 0x455a14ed

    add-int v31, v21, v22

    const/16 v32, 0x14

    move/from16 v27, v5

    move/from16 v28, v18

    move/from16 v29, v10

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v5

    .line 308
    aget v21, p1, v15

    const v22, -0x561c16fb

    add-int v25, v21, v22

    const/16 v26, 0x5

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v18

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v7

    .line 309
    aget v21, p1, v17

    const v22, -0x3105c08

    add-int v31, v21, v22

    const/16 v32, 0x9

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v18

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v10

    .line 310
    aget v21, p1, v4

    const v22, 0x676f02d9

    add-int v25, v21, v22

    const/16 v26, 0xe

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v23, v7

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v18

    .line 311
    aget v21, p1, v14

    const v22, -0x72d5b376

    add-int v25, v21, v22

    const/16 v26, 0x14

    move/from16 v21, v5

    move/from16 v22, v18

    move/from16 v23, v10

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_2(IIIIII)I

    move-result v5

    .line 313
    aget v21, p1, v13

    const v22, -0x5c6be

    add-int v31, v21, v22

    const/16 v32, 0x4

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v18

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v7

    .line 314
    aget v21, p1, v6

    const v22, -0x788e097f

    add-int v25, v21, v22

    const/16 v26, 0xb

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v10

    .line 315
    aget v21, p1, v1

    const v22, 0x6d9d6122

    add-int v31, v21, v22

    const/16 v32, 0x10

    move/from16 v27, v18

    move/from16 v28, v10

    move/from16 v29, v7

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v18

    .line 316
    aget v21, p1, v16

    const v22, -0x21ac7f4

    add-int v31, v21, v22

    const/16 v32, 0x17

    move/from16 v27, v5

    move/from16 v28, v18

    move/from16 v29, v10

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v5

    .line 317
    aget v21, p1, v9

    const v22, -0x5b4115bc

    add-int v25, v21, v22

    const/16 v26, 0x4

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v18

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v7

    .line 318
    aget v21, p1, v11

    const v22, 0x4bdecfa9    # 2.9204306E7f

    add-int v31, v21, v22

    const/16 v32, 0xb

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v18

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v10

    .line 319
    aget v21, p1, v4

    const v22, -0x944b4a0

    add-int v25, v21, v22

    const/16 v26, 0x10

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v23, v7

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v18

    .line 320
    aget v21, p1, v12

    const v22, -0x41404390

    add-int v25, v21, v22

    const/16 v26, 0x17

    move/from16 v21, v5

    move/from16 v22, v18

    move/from16 v23, v10

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v5

    .line 321
    aget v21, p1, v15

    const v22, 0x289b7ec6

    add-int v31, v21, v22

    const/16 v32, 0x4

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v18

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v7

    .line 322
    aget v21, p1, v2

    const v22, -0x155ed806

    add-int v25, v21, v22

    const/16 v26, 0xb

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v10

    .line 323
    aget v21, p1, v19

    const v22, -0x2b10cf7b

    add-int v31, v21, v22

    const/16 v32, 0x10

    move/from16 v27, v18

    move/from16 v28, v10

    move/from16 v29, v7

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v18

    .line 324
    aget v21, p1, v3

    const v22, 0x4881d05    # 3.2000097E-36f

    add-int v31, v21, v22

    const/16 v32, 0x17

    move/from16 v27, v5

    move/from16 v28, v18

    move/from16 v29, v10

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v5

    .line 325
    aget v21, p1, v8

    const v22, -0x262b2fc7

    add-int v25, v21, v22

    const/16 v26, 0x4

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v18

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v7

    .line 326
    aget v21, p1, v14

    const v22, -0x1924661b

    add-int v31, v21, v22

    const/16 v32, 0xb

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v18

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v10

    .line 327
    aget v21, p1, v20

    const v22, 0x1fa27cf8

    add-int v25, v21, v22

    const/16 v26, 0x10

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v23, v7

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v18

    .line 328
    aget v21, p1, v17

    const v22, -0x3b53a99b

    add-int v25, v21, v22

    const/16 v26, 0x17

    move/from16 v21, v5

    move/from16 v22, v18

    move/from16 v23, v10

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_3(IIIIII)I

    move-result v5

    .line 330
    aget v21, p1, v2

    const v22, -0xbd6ddbc

    add-int v31, v21, v22

    const/16 v32, 0x6

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v18

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v7

    .line 331
    aget v4, p1, v4

    const v21, 0x432aff97

    add-int v25, v4, v21

    const/16 v26, 0xa

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v4

    .line 332
    aget v10, p1, v16

    const v16, -0x546bdc59

    add-int v31, v10, v16

    const/16 v32, 0xf

    move/from16 v27, v18

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v10

    .line 333
    aget v13, p1, v13

    const v16, -0x36c5fc7

    add-int v31, v13, v16

    const/16 v32, 0x15

    move/from16 v27, v5

    move/from16 v28, v10

    move/from16 v29, v4

    move/from16 v30, v7

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v5

    .line 334
    aget v13, p1, v14

    const v14, 0x655b59c3

    add-int v25, v13, v14

    const/16 v26, 0x6

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v10

    move/from16 v24, v4

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v7

    .line 335
    aget v13, p1, v19

    const v14, -0x70f3336e

    add-int v31, v13, v14

    const/16 v32, 0xa

    move/from16 v27, v4

    move/from16 v28, v7

    move/from16 v29, v5

    move/from16 v30, v10

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v4

    .line 336
    aget v12, p1, v12

    const v13, -0x100b83

    add-int v25, v12, v13

    const/16 v26, 0xf

    move/from16 v21, v10

    move/from16 v22, v4

    move/from16 v23, v7

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v10

    .line 337
    aget v12, p1, v9

    const v13, -0x7a7ba22f

    add-int v25, v12, v13

    const/16 v26, 0x15

    move/from16 v21, v5

    move/from16 v22, v10

    move/from16 v23, v4

    move/from16 v24, v7

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v5

    .line 338
    aget v6, p1, v6

    const v12, 0x6fa87e4f

    add-int v31, v6, v12

    const/16 v32, 0x6

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v10

    move/from16 v30, v4

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v6

    .line 339
    aget v7, p1, v20

    const v12, -0x1d31920

    add-int v25, v7, v12

    const/16 v26, 0xa

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v5

    move/from16 v24, v10

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v4

    .line 340
    aget v3, p1, v3

    const v7, -0x5cfebcec

    add-int v31, v3, v7

    const/16 v32, 0xf

    move/from16 v27, v10

    move/from16 v28, v4

    move/from16 v29, v6

    move/from16 v30, v5

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v20

    .line 341
    aget v3, p1, v15

    const v7, 0x4e0811a1    # 5.7071418E8f

    add-int v31, v3, v7

    const/16 v32, 0x15

    move/from16 v27, v5

    move/from16 v28, v20

    move/from16 v29, v4

    move/from16 v30, v6

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v3

    .line 342
    aget v5, p1, v11

    const v7, -0x8ac817e

    add-int v25, v5, v7

    const/16 v26, 0x6

    move/from16 v21, v6

    move/from16 v22, v3

    move/from16 v23, v20

    move/from16 v24, v4

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v5

    .line 343
    aget v1, p1, v1

    const v6, -0x42c50dcb

    add-int v31, v1, v6

    const/16 v32, 0xa

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v3

    move/from16 v30, v20

    invoke-static/range {v27 .. v32}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v1

    .line 344
    aget v4, p1, v17

    const v6, 0x2ad7d2bb

    add-int v24, v4, v6

    const/16 v25, 0xf

    move/from16 v21, v1

    move/from16 v22, v5

    move/from16 v23, v3

    invoke-static/range {v20 .. v25}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v4

    .line 345
    aget v6, p1, v8

    const v7, -0x14792c6f

    add-int v25, v6, v7

    const/16 v26, 0x15

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v1

    move/from16 v24, v5

    invoke-static/range {v21 .. v26}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->MD5STEP_4(IIIIII)I

    move-result v3

    .line 347
    iget-object v6, v0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    aget v7, v6, v2

    add-int/2addr v7, v5

    aput v7, v6, v2

    .line 348
    aget v2, v6, v9

    add-int/2addr v2, v3

    aput v2, v6, v9

    .line 349
    aget v2, v6, v17

    add-int/2addr v2, v4

    aput v2, v6, v17

    .line 350
    aget v2, v6, v19

    add-int/2addr v2, v1

    aput v2, v6, v19

    return-void
.end method


# virtual methods
.method currentDigest()[I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    return-object v0
.end method

.method pad()V
    .locals 7

    .line 201
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->pendingLength()I

    move-result v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x78

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v1, :cond_2

    .line 205
    sget-object v5, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->s_padding:[B

    aget-byte v5, v5, v3

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->put(BI)V

    if-ne v6, v4, :cond_1

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->transform([I)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move v0, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    div-int/lit8 v2, v0, 0x4

    iget-wide v5, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    long-to-int v3, v5

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x4

    .line 214
    div-int/lit8 v2, v0, 0x4

    const/16 v3, 0x20

    ushr-long/2addr v5, v3

    long-to-int v3, v5

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3

    .line 218
    invoke-direct {p0, v1}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->transform([I)V

    const-wide/16 v0, 0x0

    .line 220
    iput-wide v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    return-void

    .line 217
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pad index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method persist(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-wide v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_digest:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 175
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x40

    if-ge v2, v0, :cond_1

    .line 178
    invoke-direct {p0, v2}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->get(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method update(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->pendingLength()I

    move-result v0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->put(BI)V

    .line 190
    iget-wide v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_total:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->m_pending:[I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/cms/ipc/MD5MessageDigest$State;->transform([I)V

    goto :goto_0

    :cond_2
    return-void
.end method
