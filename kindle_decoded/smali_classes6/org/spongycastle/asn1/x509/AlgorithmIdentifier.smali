.class public Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AlgorithmIdentifier.java"


# instance fields
.field private objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private parameters:Lorg/spongycastle/asn1/ASN1Encodable;

.field private parametersDefined:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    .line 53
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    .line 71
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 88
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 92
    iput-boolean v2, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    .line 93
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/spongycastle/asn1/ASN1Encodable;

    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    if-eqz p0, :cond_3

    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 42
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 130
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 132
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-boolean v1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parametersDefined:Z

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    :cond_1
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
