.class public Lcom/amazon/messaging/odot/dto/OdotMessageDTO;
.super Ljava/lang/Object;
.source "OdotMessageDTO.java"

# interfaces
.implements Lcom/amazon/messaging/odot/dto/IOdotMessage;


# static fields
.field private static final SHA_ALGORITHM:Ljava/lang/String; = "SHA256withRSA:1.0"


# instance fields
.field private crc:Ljava/lang/Long;

.field private creationDateUtc:Ljava/lang/Long;

.field private id:Ljava/lang/String;

.field private payload:[B

.field private requester:Ljava/lang/String;

.field private retries:Ljava/lang/Integer;

.field private retryAfterUtc:Ljava/lang/Long;

.field private signature:Ljava/lang/String;

.field private status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field private tokenId:Ljava/lang/String;

.field private topic:Ljava/lang/String;

.field private transport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/amazon/messaging/odot/dto/OdotMessageStatus;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->payload:[B

    .line 36
    iput-object p3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 38
    iput-object p5, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->creationDateUtc:Ljava/lang/Long;

    .line 39
    iput-object p6, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    .line 40
    iput-object p7, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    .line 42
    iput-object p9, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->requester:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->transport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 137
    :cond_1
    instance-of v2, p1, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    if-nez v2, :cond_2

    return v0

    .line 141
    :cond_2
    check-cast p1, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    .line 142
    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->payload:[B

    .line 143
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getPayload()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 145
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getStatus()Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->creationDateUtc:Ljava/lang/Long;

    .line 146
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getCreationDateUtc()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    .line 147
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getCrc()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retries:Ljava/lang/Integer;

    .line 149
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRetries()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->requester:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRequester()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->transport:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retryAfterUtc:Ljava/lang/Long;

    .line 153
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRetryAfterUtc()Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getCrc()Ljava/lang/Long;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreationDateUtc()Ljava/lang/Long;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->creationDateUtc:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->payload:[B

    return-object v0
.end method

.method public getRequester()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->requester:Ljava/lang/String;

    return-object v0
.end method

.method public getRetries()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retries:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRetryAfterUtc()Ljava/lang/Long;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retryAfterUtc:Ljava/lang/Long;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x24d

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 162
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->payload:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 163
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 164
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 165
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->creationDateUtc:Ljava/lang/Long;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 166
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 167
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 168
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retries:Ljava/lang/Integer;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 169
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 170
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->requester:Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 171
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->transport:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 172
    iget-object v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retryAfterUtc:Ljava/lang/Long;

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v2, v1

    return v2
.end method

.method public setOdotMessageStatus(Lcom/amazon/messaging/odot/dto/OdotMessageStatus;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    return-void
.end method

.method public setRetries(Ljava/lang/Integer;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retries:Ljava/lang/Integer;

    return-void
.end method

.method public setRetryAfterUtc(Ljava/lang/Long;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retryAfterUtc:Ljava/lang/Long;

    return-void
.end method

.method public toMessage()Lcom/amazon/messaging/odot/webservices/transportdto/Message;
    .locals 3

    .line 195
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setId(Ljava/lang/String;)Z

    .line 197
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setTopic(Ljava/lang/String;)Z

    .line 198
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->payload:[B

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setPayload([B)Z

    .line 199
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setCRC(J)Z

    .line 200
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setToken(Ljava/lang/String;)Z

    .line 201
    iget-object v1, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setSignature(Ljava/lang/String;)Z

    const-string v1, "SHA256withRSA:1.0"

    .line 202
    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->setAlgorithm(Ljava/lang/String;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topic: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->topic:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->status:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creationDateUtc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->creationDateUtc:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->crc:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->signature:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retries:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tokenId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->tokenId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requester: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->requester:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transport: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->transport:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryAfterUtc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->retryAfterUtc:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
