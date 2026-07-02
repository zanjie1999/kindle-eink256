.class public Lorg/spongycastle/asn1/x509/GeneralNames;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "GeneralNames.java"


# instance fields
.field private final names:[Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 51
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 18
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getNames()[Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 4

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v1, v0

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 76
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    .line 95
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 100
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->names:[Lorg/spongycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
