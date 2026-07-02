.class public Lorg/spongycastle/asn1/x509/ReasonFlags;
.super Lorg/spongycastle/asn1/DERBitString;
.source "ReasonFlags.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/DERBitString;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERBitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method
