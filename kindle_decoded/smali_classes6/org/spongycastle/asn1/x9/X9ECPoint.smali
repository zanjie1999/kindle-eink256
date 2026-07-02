.class public Lorg/spongycastle/asn1/x9/X9ECPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field p:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECPoint;->p:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
