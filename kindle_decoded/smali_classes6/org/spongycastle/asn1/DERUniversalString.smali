.class public Lorg/spongycastle/asn1/DERUniversalString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERUniversalString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field private string:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/DERUniversalString;->table:[C

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

.method public constructor <init>([B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 139
    instance-of v0, p1, Lorg/spongycastle/asn1/DERUniversalString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    check-cast p1, Lorg/spongycastle/asn1/DERUniversalString;

    iget-object p1, p1, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUniversalString;->getOctets()[B

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOctets()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    new-instance v2, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 100
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 102
    sget-object v3, Lorg/spongycastle/asn1/DERUniversalString;->table:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    sget-object v3, Lorg/spongycastle/asn1/DERUniversalString;->table:[C

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUniversalString;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
