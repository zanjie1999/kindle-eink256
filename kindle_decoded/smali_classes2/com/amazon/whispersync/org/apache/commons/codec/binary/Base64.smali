.class public Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;
.super Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x6

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 71
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 80
    fill-array-data v1, :array_1

    sput-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v0, [B

    .line 93
    fill-array-data v0, :array_2

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 112
    fill-array-data v0, :array_3

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 212
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 270
    :cond_0
    array-length v1, p2

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2, p1, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 140
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 276
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->containsAlphabetOrPad([B)Z

    move-result v3

    if-nez v3, :cond_2

    if-lez p1, :cond_1

    .line 281
    array-length p1, p2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 282
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 283
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 285
    :cond_1
    iput v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 286
    iput-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 277
    :cond_2
    invoke-static {p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 289
    :cond_3
    iput v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 290
    iput-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 292
    :goto_1
    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeSize:I

    if-eqz p3, :cond_4

    .line 293
    sget-object p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    :goto_2
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 189
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    .line 686
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    .line 697
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 2

    .line 712
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1

    const/4 v0, 0x0

    .line 618
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    .line 637
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 4

    if-eqz p0, :cond_3

    .line 659
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 665
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    const/4 v0, 0x0

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 666
    :goto_0
    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->getEncodedLength([B)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long p2, v0, v2

    if-gtz p2, :cond_2

    .line 674
    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    return-object p0

    .line 668
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input array too big, the output array would be bigger ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") than the specified maximum size of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    .line 603
    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 579
    invoke-static {p0, v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 592
    invoke-static {p0, v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 729
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0

    .line 727
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "encodeInteger called with null parameter"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result p0

    return p0
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    .line 507
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 0

    .line 521
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->isBase64([B)Z

    move-result p0

    return p0
.end method

.method public static isBase64([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 535
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 536
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    .line 740
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    .line 743
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 745
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    div-int/lit8 v4, v0, 0x8

    if-ne v2, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 750
    array-length v4, v1

    .line 753
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 757
    :goto_0
    div-int/lit8 v0, v0, 0x8

    sub-int p0, v0, v4

    .line 758
    new-array v0, v0, [B

    .line 759
    invoke-static {v1, v3, v0, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method decode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 7

    .line 426
    iget-boolean v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    .line 430
    iput-boolean v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 433
    iget v2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v2, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    .line 434
    aget-byte p2, p1, p2

    const/16 v4, 0x3d

    if-ne p2, v4, :cond_2

    .line 437
    iput-boolean v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    .line 440
    sget-object v4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v5, v4

    if-ge p2, v5, :cond_3

    .line 441
    aget-byte p2, v4, p2

    if-ltz p2, :cond_3

    .line 443
    iget v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x4

    iput v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 444
    iget v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, p2

    iput v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    if-nez v4, :cond_3

    .line 446
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, p2, 0x1

    iput v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, p2

    add-int/lit8 p2, v4, 0x1

    .line 447
    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, p2, 0x1

    .line 448
    iput v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 458
    :cond_4
    :goto_1
    iget-boolean p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz p1, :cond_7

    iget p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz p1, :cond_7

    .line 459
    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    .line 463
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eq p2, v0, :cond_7

    const/4 p3, 0x2

    if-eq p2, p3, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 473
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/2addr p2, p3

    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 474
    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    add-int/lit8 p3, v0, 0x1

    .line 475
    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    goto :goto_2

    .line 478
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Impossible modulus "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_6
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 p2, p2, 0x4

    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 470
    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    :cond_7
    :goto_2
    return-void
.end method

.method encode([BIILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 9

    .line 329
    iget-boolean v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_5

    .line 335
    iput-boolean v1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 336
    iget p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-nez p1, :cond_1

    return-void

    .line 339
    :cond_1
    iget p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, p1, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    .line 340
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 341
    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz p3, :cond_4

    const/16 v2, 0x3d

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    add-int/lit8 p3, p2, 0x1

    .line 357
    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v3, v5

    aput-byte v5, p1, p2

    add-int/lit8 v5, p3, 0x1

    .line 358
    iput v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v3, v6

    aput-byte v6, p1, p3

    add-int/lit8 p3, v5, 0x1

    .line 359
    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shl-int/lit8 v1, v4, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p1, v5

    .line 361
    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v1, :cond_4

    add-int/lit8 v1, p3, 0x1

    .line 362
    iput v1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v2, p1, p3

    goto :goto_0

    .line 366
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Impossible modulus "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 p3, p2, 0x1

    .line 346
    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v3, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v1, v4

    aput-byte v4, p1, p2

    add-int/lit8 v4, p3, 0x1

    .line 348
    iput v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p1, p3

    .line 350
    sget-object p3, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, p3, :cond_4

    add-int/lit8 p3, v4, 0x1

    .line 351
    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v2, p1, v4

    add-int/lit8 v1, p3, 0x1

    .line 352
    iput v1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v2, p1, p3

    .line 368
    :cond_4
    :goto_0
    iget p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int p2, v1, p2

    add-int/2addr p3, p2

    iput p3, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 370
    iget p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p2, :cond_8

    if-lez p3, :cond_8

    .line 371
    iget-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length p3, p2

    invoke-static {p2, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_8

    .line 376
    iget v3, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v3, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 377
    iget v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v4, p2, 0x1

    .line 378
    aget-byte p2, p1, p2

    if-gez p2, :cond_6

    add-int/lit16 p2, p2, 0x100

    .line 382
    :cond_6
    iget v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, p2

    iput v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 383
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez p2, :cond_7

    .line 384
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, p2, 0x1

    iput v6, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, p2

    add-int/lit8 p2, v6, 0x1

    .line 385
    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, p2, 0x1

    .line 386
    iput v6, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, p2

    add-int/lit8 p2, v6, 0x1

    .line 387
    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v7, v5

    aput-byte v5, v3, v6

    .line 388
    iget v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 389
    iget v6, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v6, :cond_7

    if-gt v6, v5, :cond_7

    .line 390
    iget-object v5, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v5

    invoke-static {v5, v0, v3, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr p2, v3

    iput p2, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 392
    iput v0, p4, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move p2, v4

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method protected isInAlphabet(B)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUrlSafe()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
