.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;
.super Ljava/lang/Object;
.source "ECJPAKERound2Payload.java"


# instance fields
.field private final mA:Lorg/spongycastle/math/ec/ECPoint;

.field private final mKnowledgeProofForX2s:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

.field private final mParticipantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECPoint;Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "participantId"

    .line 31
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    .line 32
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2s"

    .line 33
    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mParticipantId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mA:Lorg/spongycastle/math/ec/ECPoint;

    .line 38
    iput-object p3, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mKnowledgeProofForX2s:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    return-void
.end method


# virtual methods
.method public getA()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mA:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getKnowledgeProofForX2s()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mKnowledgeProofForX2s:Lcom/amazon/whispercloak/jpake/ec/ECJPAKEZeroKnowledgeProof;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;->mParticipantId:Ljava/lang/String;

    return-object v0
.end method
