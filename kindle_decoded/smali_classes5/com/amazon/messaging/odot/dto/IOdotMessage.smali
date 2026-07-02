.class public interface abstract Lcom/amazon/messaging/odot/dto/IOdotMessage;
.super Ljava/lang/Object;
.source "IOdotMessage.java"


# virtual methods
.method public abstract getCrc()Ljava/lang/Long;
.end method

.method public abstract getCreationDateUtc()Ljava/lang/Long;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPayload()[B
.end method

.method public abstract getRequester()Ljava/lang/String;
.end method

.method public abstract getRetries()Ljava/lang/Integer;
.end method

.method public abstract getRetryAfterUtc()Ljava/lang/Long;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
.end method

.method public abstract getTokenId()Ljava/lang/String;
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public abstract toMessage()Lcom/amazon/messaging/odot/webservices/transportdto/Message;
.end method
