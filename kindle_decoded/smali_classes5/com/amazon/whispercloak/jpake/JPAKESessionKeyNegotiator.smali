.class public interface abstract Lcom/amazon/whispercloak/jpake/JPAKESessionKeyNegotiator;
.super Ljava/lang/Object;
.source "JPAKESessionKeyNegotiator.java"


# virtual methods
.method public abstract computeCommonKeyMaterial()Ljava/math/BigInteger;
.end method

.method public abstract createRound1PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;
.end method

.method public abstract createRound2PayloadToSend()Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;
.end method

.method public abstract createRound3PayloadToSend(Ljava/math/BigInteger;)Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;
.end method

.method public abstract deriveSessionKey(Ljava/math/BigInteger;)[B
.end method

.method public abstract getParticipant()Lcom/amazon/whispercloak/jpake/ec/ECJPAKEParticipant;
.end method

.method public abstract validateRound1PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound1Payload;)V
.end method

.method public abstract validateRound2PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound2Payload;)V
.end method

.method public abstract validateRound3PayloadReceived(Lcom/amazon/whispercloak/jpake/ec/ECJPAKERound3Payload;Ljava/math/BigInteger;)V
.end method
