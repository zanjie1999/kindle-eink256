.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;
.super Ljava/lang/Object;
.source "ECJPAKEZeroKnowledgeProof.java"


# instance fields
.field private final mGv:Lorg/spongycastle/math/ec/ECPoint;

.field private final mR:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Gv"

    .line 27
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "r"

    .line 28
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->mGv:Lorg/spongycastle/math/ec/ECPoint;

    .line 32
    iput-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->mR:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getGv()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->mGv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getR()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;->mR:Ljava/math/BigInteger;

    return-object v0
.end method
