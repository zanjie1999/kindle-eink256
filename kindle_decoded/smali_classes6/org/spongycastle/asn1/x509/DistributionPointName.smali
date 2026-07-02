.class public Lorg/spongycastle/asn1/x509/DistributionPointName;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DistributionPointName.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field name:Lorg/spongycastle/asn1/ASN1Encodable;

.field type:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->type:I

    .line 57
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    :goto_0
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    .line 131
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 3

    if-eqz p0, :cond_2

    .line 40
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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

    .line 42
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x509/DistributionPointName;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 0

    const/4 p1, 0x1

    .line 34
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getName()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "line.separator"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget v2, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/DistributionPointName;->name:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "]"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
