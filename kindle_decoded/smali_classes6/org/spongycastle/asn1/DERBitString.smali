.class public Lorg/spongycastle/asn1/DERBitString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERBitString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/DERBitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    .line 157
    iput p2, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    return-void
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lorg/spongycastle/asn1/DERBitString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    sub-int/2addr p0, v0

    .line 306
    new-array v0, p0, [B

    if-eqz p0, :cond_1

    .line 310
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of BIT STRING"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_1
    :goto_0
    new-instance p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object p0

    .line 302
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BIT STRING detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/DERBitString;
    .locals 5

    .line 281
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 286
    aget-byte v2, p0, v0

    .line 287
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v4, v3, [B

    if-eqz v3, :cond_0

    .line 291
    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_0
    new-instance p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v4, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object p0

    .line 283
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;
    .locals 3

    if-eqz p0, :cond_1

    .line 105
    instance-of v0, p0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/DERBitString;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;
    .locals 0

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p1, :cond_1

    .line 129
    instance-of p1, p0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/DERBitString;->fromOctetString([B)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 237
    instance-of v0, p1, Lorg/spongycastle/asn1/DERBitString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 242
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/DERBitString;

    .line 244
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    iget v2, p1, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/DERBitString;->data:[B

    .line 245
    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [B

    .line 223
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    sub-int/2addr v0, v1

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x3

    .line 226
    invoke-virtual {p1, v0, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    new-instance v2, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 265
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 267
    sget-object v3, Lorg/spongycastle/asn1/DERBitString;->table:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    sget-object v3, Lorg/spongycastle/asn1/DERBitString;->table:[C

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 231
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->padBits:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/DERBitString;->data:[B

    array-length v3, v2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 201
    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
