.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$8;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 12

    .line 179
    new-instance v9, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "0400000000000000000001E60FC8821CC74DAEAFC1"

    invoke-direct {v9, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x2

    .line 180
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 182
    new-instance v11, Lorg/spongycastle/math/ec/ECCurve$F2m;

    new-instance v5, Ljava/math/BigInteger;

    const-string v1, "072546B5435234A422E0789675F432C89435DE5242"

    invoke-direct {v5, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v1, "00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9"

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 189
    new-instance v6, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v0, "0307AF69989546103D79329FCC3D74880F33BBE803CB"

    .line 192
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    const-string v0, "D2C0FB15760860DEF1EEF4D696E6768756151754"

    .line 194
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, v11

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
