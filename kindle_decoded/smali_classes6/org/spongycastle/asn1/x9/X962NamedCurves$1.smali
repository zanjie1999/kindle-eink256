.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$1;
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

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 22
    new-instance v6, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "ffffffffffffffffffffffff99def836146bc9b1b4d22831"

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x1

    .line 23
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 25
    new-instance v8, Lorg/spongycastle/math/ec/ECCurve$Fp;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "6277101735386680763835789423207666416083908700390324961279"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "64210519e59c80e70fa7e9ab72243049feb8deecc146b9b1"

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 31
    new-instance v9, Lorg/spongycastle/asn1/x9/X9ECParameters;

    const-string v0, "03188da80eb03090f67cbf20eb43a18800f4ff0afd82ff1012"

    .line 34
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    const-string v0, "3045AE6FC8422f64ED579528D38120EAE12196D5"

    .line 36
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v9

    move-object v1, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
