.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;
.super Ljava/lang/Object;
.source "MessageAttributeValue.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private binaryValue:Ljava/nio/ByteBuffer;

.field private dataType:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 288
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;

    if-nez v2, :cond_2

    return v1

    .line 290
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;

    .line 292
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 294
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 296
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 298
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 299
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 301
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 303
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 304
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getBinaryValue()Ljava/nio/ByteBuffer;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->binaryValue:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setBinaryValue(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->binaryValue:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->dataType:Ljava/lang/String;

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StringValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBinaryValue(Ljava/nio/ByteBuffer;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->binaryValue:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withDataType(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->dataType:Ljava/lang/String;

    return-object p0
.end method

.method public withStringValue(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->stringValue:Ljava/lang/String;

    return-object p0
.end method
