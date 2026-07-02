.class public Lorg/spongycastle/asn1/x9/DHValidationParms;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DHValidationParms.java"


# instance fields
.field private pgenCounter:Lorg/spongycastle/asn1/ASN1Integer;

.field private seed:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->seed:Lorg/spongycastle/asn1/DERBitString;

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->pgenCounter:Lorg/spongycastle/asn1/ASN1Integer;

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHValidationParms;
    .locals 1

    .line 24
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/x9/DHValidationParms;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/DHValidationParms;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPgenCounter()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->pgenCounter:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSeed()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->seed:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 74
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->seed:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHValidationParms;->pgenCounter:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
