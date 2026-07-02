.class public Lorg/spongycastle/asn1/x9/DHPublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DHPublicKey.java"


# instance fields
.field private y:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->y:Lorg/spongycastle/asn1/ASN1Integer;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'y\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;
    .locals 3

    if-eqz p0, :cond_2

    .line 20
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/DHPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHPublicKey: "

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

    .line 22
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    return-object p0
.end method


# virtual methods
.method public getY()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->y:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->y:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
