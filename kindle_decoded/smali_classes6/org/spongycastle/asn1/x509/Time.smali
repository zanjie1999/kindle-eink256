.class public Lorg/spongycastle/asn1/x509/Time;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field time:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;
    .locals 3

    if-eqz p0, :cond_3

    .line 105
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    check-cast p0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 113
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    check-cast p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 118
    :cond_2
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

    .line 107
    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x509/Time;

    return-object p0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    check-cast v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    check-cast v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    check-cast v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Time;->time:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
