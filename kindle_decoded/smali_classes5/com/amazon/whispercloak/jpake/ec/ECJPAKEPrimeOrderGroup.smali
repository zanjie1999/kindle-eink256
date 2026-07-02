.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;
.super Ljava/lang/Object;
.source "ECJPAKEPrimeOrderGroup.java"


# static fields
.field private static final ALLOWED_CURVE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCoFactor:Ljava/math/BigInteger;

.field private final mCurve:Lorg/spongycastle/math/ec/ECCurve$Fp;

.field private final mG:Lorg/spongycastle/math/ec/ECPoint;

.field private final mN:Ljava/math/BigInteger;

.field private final mQ:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "prime256v1"

    const-string v2, "brainpoolp256r1"

    const-string v3, "brainpoolp384r1"

    const-string v4, "brainpoolp512r1"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->ALLOWED_CURVE_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "curveName"

    .line 47
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->ALLOWED_CURVE_NAMES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Lorg/spongycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mCurve:Lorg/spongycastle/math/ec/ECCurve$Fp;

    .line 59
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mQ:Ljava/math/BigInteger;

    .line 60
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mCoFactor:Ljava/math/BigInteger;

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mG:Lorg/spongycastle/math/ec/ECPoint;

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mN:Ljava/math/BigInteger;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCoFactor()Ljava/math/BigInteger;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mCoFactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurve()Lorg/spongycastle/math/ec/ECCurve$Fp;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mCurve:Lorg/spongycastle/math/ec/ECCurve$Fp;

    return-object v0
.end method

.method public getG()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mG:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mN:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEPrimeOrderGroup;->mQ:Ljava/math/BigInteger;

    return-object v0
.end method
