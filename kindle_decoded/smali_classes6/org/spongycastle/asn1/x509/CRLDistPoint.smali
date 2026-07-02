.class public Lorg/spongycastle/asn1/x509/CRLDistPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CRLDistPoint.java"


# instance fields
.field seq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .locals 1

    .line 25
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/x509/CRLDistPoint;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/DistributionPoint;

    const/4 v1, 0x0

    .line 65
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CRLDistPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    .line 87
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRLDistPoint:"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    const/4 v3, 0x0

    .line 92
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    const-string v4, "    "

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
