.class public Lorg/spongycastle/asn1/DERUTF8String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERUTF8String.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 89
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 109
    instance-of v0, p1, Lorg/spongycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 114
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/DERUTF8String;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

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
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/DERUTF8String;->string:[B

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

    .line 99
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
