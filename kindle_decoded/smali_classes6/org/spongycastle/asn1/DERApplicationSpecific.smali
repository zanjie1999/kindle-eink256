.class public Lorg/spongycastle/asn1/DERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    iput p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 73
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Object;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "malformed object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 24
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    return-void
.end method

.method private replaceTagNumber(I[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    aget-byte v1, p2, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 240
    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v4, v2, 0x7f

    if-eqz v4, :cond_0

    :goto_0
    if-ltz v2, :cond_2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 253
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string p2, "corrupted stream - invalid high tag number found"

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    .line 259
    :cond_2
    array-length v2, p2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    new-array v4, v2, [B

    sub-int/2addr v2, v3

    .line 261
    invoke-static {p2, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p1, p1

    .line 263
    aput-byte p1, v4, v0

    return-object v4
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 211
    instance-of v0, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 218
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget v2, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 220
    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 205
    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject(I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    .line 178
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 180
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 182
    aget-byte v0, p1, v1

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 185
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 174
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unsupported tag number"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 225
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    return v0
.end method
