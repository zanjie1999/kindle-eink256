.class public Lcom/amazon/messaging/odot/webservices/transportdto/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/json/simple/JSONAware;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCrc:J

.field private mId:Ljava/lang/String;

.field private mPayload:[B

.field private mSignature:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
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
    .locals 1

    .line 162
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: isValidId:  Returning false because id is null or empty."

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidPayload([B)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 181
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v1, "Message: isValidPayload:  Returning false because payload is null."

    invoke-static {p0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 v1, 0x1800

    const-string v2, "messaging.max_payload_size"

    .line 185
    invoke-static {v2, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->getInt(Ljava/lang/String;I)I

    .line 186
    array-length p0, p0

    if-le p0, v1, :cond_1

    .line 187
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v1, "Message: isValidPayload:  Returning false because payload is too large."

    invoke-static {p0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSignature(Ljava/lang/String;)Z
    .locals 1

    .line 209
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 210
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: isValidSignature:  Returning false because signature is null or empty."

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidToken(Ljava/lang/String;)Z
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 200
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: isValidToken:  Returning false because token is null or empty."

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidTopic(Ljava/lang/String;)Z
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: isValidTopic:  Returning false because topic is null or empty."

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidId(Ljava/lang/String;)Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mTopic:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidTopic(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mPayload:[B

    invoke-static {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidPayload([B)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 141
    :cond_1
    iget-wide v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mCrc:J

    invoke-static {v3, v4}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidCRC(J)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mSignature:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidSignature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidAlgorithm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    if-nez v2, :cond_6

    .line 155
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v1, "Message: isValid:  Returning false because one or more components is invalid.  (See previous logs from Message: isValid... for details.)"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v2
.end method

.method public setAlgorithm(Ljava/lang/String;)Z
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidAlgorithm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setAlgorithm:  Supplied algorithm is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mAlgorithm:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setCRC(J)Z
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mCrc:J

    const/4 p1, 0x1

    return p1
.end method

.method public setId(Ljava/lang/String;)Z
    .locals 1

    .line 37
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setId:  Supplied id is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setPayload([B)Z
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidPayload([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setPayload:  Supplied payload is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mPayload:[B

    const/4 p1, 0x1

    return p1
.end method

.method public setSignature(Ljava/lang/String;)Z
    .locals 1

    .line 102
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setSignature:  Supplied signature is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mSignature:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setToken(Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setToken:  Supplied token is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mToken:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setTopic(Ljava/lang/String;)Z
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValidTopic(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    const-string v0, "Message: setTopic:  Supplied topic is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mTopic:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    .line 226
    :try_start_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v1, "id"

    .line 228
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "topic"

    .line 229
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "payload"

    .line 230
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mPayload:[B

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crc"

    .line 234
    iget-wide v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mCrc:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "signature"

    .line 235
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "alg"

    .line 238
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create JSON String for topic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->mTopic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because of unsupported encoding exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
