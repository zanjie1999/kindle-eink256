.class public Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

.field private seq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 144
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 149
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 170
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_1

    .line 164
    :cond_2
    new-instance v3, Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/x509/ReasonFlags;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    goto :goto_1

    .line 161
    :cond_3
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    goto :goto_1

    .line 155
    :cond_5
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    .line 262
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    .locals 1

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public isIndirectCRL()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public onlyContainsCACerts()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public onlyContainsUserCerts()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "line.separator"

    .line 222
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_1

    .line 233
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_2

    .line 237
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_4

    .line 245
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4
    iget-boolean v2, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_5

    .line 249
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
