.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$7;
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

    .line 151
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 154
    new-instance v6, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x1

    .line 155
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 157
    new-instance v8, Lorg/spongycastle/math/ec/ECCurve$Fp;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "ffffffff00000001000000000000000000000000fffffffffffffffffffffffc"

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 163
    new-instance v9, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v0, "036b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    .line 166
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 165
    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    const-string v0, "c49d360886e704936a6678e1139d26b7819f7e90"

    .line 168
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v9

    move-object v1, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
