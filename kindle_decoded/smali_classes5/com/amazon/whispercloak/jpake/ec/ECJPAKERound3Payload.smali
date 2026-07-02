.class public Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;
.super Ljava/lang/Object;
.source "ECJPAKERound3Payload.java"


# instance fields
.field private final mMacTag:Ljava/math/BigInteger;

.field private final mParticipantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "participantId"

    .line 25
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macTag"

    .line 26
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->mParticipantId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->mMacTag:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getMacTag()Ljava/math/BigInteger;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->mMacTag:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;->mParticipantId:Ljava/lang/String;

    return-object v0
.end method
