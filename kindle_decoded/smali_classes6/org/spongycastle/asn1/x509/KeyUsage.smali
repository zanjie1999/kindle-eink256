.class public Lorg/spongycastle/asn1/x509/KeyUsage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "KeyUsage.java"


# instance fields
.field private bitString:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->bitString:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/KeyUsage;
    .locals 1

    .line 41
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Lorg/spongycastle/asn1/x509/KeyUsage;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyUsage;

    invoke-static {p0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/KeyUsage;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->bitString:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyUsage;->bitString:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "KeyUsage: 0x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
