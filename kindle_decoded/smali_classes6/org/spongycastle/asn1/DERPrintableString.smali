.class public Lorg/spongycastle/asn1/DERPrintableString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERPrintableString.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_1

    .line 103
    invoke-static {p1}, Lorg/spongycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    return-void
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .locals 5

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x30

    if-gt v3, v2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v4

    :cond_4
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 146
    instance-of v0, p1, Lorg/spongycastle/asn1/DERPrintableString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/DERPrintableString;

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

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

    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->string:[B

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

    .line 158
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
