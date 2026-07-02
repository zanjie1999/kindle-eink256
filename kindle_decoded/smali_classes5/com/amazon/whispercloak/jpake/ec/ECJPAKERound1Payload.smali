.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;
.super Ljava/lang/Object;
.source "ECJPAKERound1Payload.java"


# instance fields
.field private final mGx1:Lorg/spongycastle/math/ec/ECPoint;

.field private final mGx2:Lorg/spongycastle/math/ec/ECPoint;

.field private final mKnowledgeProofForX1:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

.field private final mKnowledgeProofForX2:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

.field private final mParticipantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "participantId"

    .line 43
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Gx1"

    .line 44
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Gx2"

    .line 45
    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX1"

    .line 46
    invoke-static {p4, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2"

    .line 47
    invoke-static {p5, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mParticipantId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    .line 52
    iput-object p3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    .line 53
    iput-object p4, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mKnowledgeProofForX1:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    .line 54
    iput-object p5, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mKnowledgeProofForX2:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    return-void
.end method


# virtual methods
.method public getGx1()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mGx1:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getGx2()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mGx2:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getKnowledgeProofForX1()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mKnowledgeProofForX1:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    return-object v0
.end method

.method public getKnowledgeProofForX2()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mKnowledgeProofForX2:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;->mParticipantId:Ljava/lang/String;

    return-object v0
.end method
