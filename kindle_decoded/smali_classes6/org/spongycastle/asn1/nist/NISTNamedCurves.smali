.class public Lorg/spongycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-571"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-409"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-283"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-233"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 32
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-163"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 33
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-571"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-409"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-283"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-233"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-163"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 38
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 39
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 41
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 42
    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method static defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p0, :cond_0

    .line 52
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 0

    .line 67
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 79
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
