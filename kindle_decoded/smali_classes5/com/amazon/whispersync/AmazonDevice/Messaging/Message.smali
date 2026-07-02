.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/amazon/whispersync/org/json/simple/JSONAware;


# static fields
.field static final DEFAULT_MAX_PAYLOAD_SIZE:I = 0x1800

.field static final MAX_PAYLOAD_SIZE_KEY:Ljava/lang/String; = "messaging.max_payload_size"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCrc:J

.field private mId:Ljava/lang/String;

.field private mPayload:[B

.field private mSignature:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidAlgorithm(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidCRC(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 2

    .line 187
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Message: isValidId:  Returning false because id is null or empty."

    .line 189
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidPayload([B)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "Message: isValidPayload:  Returning false because payload is null."

    .line 211
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/16 v1, 0x1800

    const-string v2, "messaging.max_payload_size"

    .line 215
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 216
    array-length p0, p0

    if-le p0, v1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "Message: isValidPayload:  Returning false because payload is too large."

    .line 218
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSignature(Ljava/lang/String;)Z
    .locals 2

    .line 244
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Message: isValidSignature:  Returning false because signature is null or empty."

    .line 246
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidToken(Ljava/lang/String;)Z
    .locals 2

    .line 232
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Message: isValidToken:  Returning false because token is null or empty."

    .line 234
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidTopic(Ljava/lang/String;)Z
    .locals 2

    .line 198
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Message: isValidTopic:  Returning false because topic is null or empty."

    .line 200
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCRC()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mCrc:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mPayload:[B

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mTopic:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidId(Ljava/lang/String;)Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mTopic:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidTopic(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mPayload:[B

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidPayload([B)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 160
    :cond_1
    iget-wide v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mCrc:J

    invoke-static {v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidCRC(J)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mSignature:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidSignature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 172
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidAlgorithm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-nez v0, :cond_6

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Message: isValid:  Returning false because one or more components is invalid.  (See previous logs from Message: isValid... for details.)"

    .line 179
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)Z
    .locals 2

    .line 129
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setAlgorithm:  Supplied algorithm is invalid.  Cannot be set."

    .line 131
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mAlgorithm:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setCRC(J)Z
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mCrc:J

    const/4 p1, 0x1

    return p1
.end method

.method public setId(Ljava/lang/String;)Z
    .locals 2

    .line 33
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setId:  Supplied id is invalid.  Cannot be set."

    .line 35
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setPayload([B)Z
    .locals 2

    .line 67
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidPayload([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setPayload:  Supplied payload is invalid.  Cannot be set."

    .line 69
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mPayload:[B

    const/4 p1, 0x1

    return p1
.end method

.method public setSignature(Ljava/lang/String;)Z
    .locals 2

    .line 112
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setSignature:  Supplied signature is invalid.  Cannot be set."

    .line 114
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mSignature:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setToken(Ljava/lang/String;)Z
    .locals 2

    .line 95
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setToken:  Supplied token is invalid.  Cannot be set."

    .line 97
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mToken:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setTopic(Ljava/lang/String;)Z
    .locals 2

    .line 50
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValidTopic(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Message: setTopic:  Supplied topic is invalid.  Cannot be set."

    .line 52
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mTopic:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    .line 265
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    const-string v1, "id"

    .line 267
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "topic"

    .line 268
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "payload"

    .line 269
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mPayload:[B

    invoke-static {v3}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crc"

    .line 273
    iget-wide v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mCrc:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "signature"

    .line 274
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "alg"

    .line 278
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 285
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->mTopic:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Failed to create JSON String for topic %s because of unsupported encoding exception: %s"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method
