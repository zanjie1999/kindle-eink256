.class public Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;
.super Ljava/lang/Object;
.source "SignatureChecker.java"


# instance fields
.field private final INTERESTING_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MESSAGE:Ljava/lang/String;

.field private final MESSAGE_ID:Ljava/lang/String;

.field private final NOTIFICATION_TYPE:Ljava/lang/String;

.field private final SIGNATURE:Ljava/lang/String;

.field private final SIGNATURE_VERSION:Ljava/lang/String;

.field private final SUBJECT:Ljava/lang/String;

.field private final SUBSCRIBE_TYPE:Ljava/lang/String;

.field private final SUBSCRIBE_URL:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final TOKEN:Ljava/lang/String;

.field private final TOPIC:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field private final UNSUBSCRIBE_TYPE:Ljava/lang/String;

.field private sigChecker:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Notification"

    .line 44
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->NOTIFICATION_TYPE:Ljava/lang/String;

    const-string v0, "SubscriptionConfirmation"

    .line 45
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_TYPE:Ljava/lang/String;

    const-string v0, "UnsubscribeConfirmation"

    .line 46
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->UNSUBSCRIBE_TYPE:Ljava/lang/String;

    const-string v0, "Type"

    .line 48
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->TYPE:Ljava/lang/String;

    const-string v0, "SubscribeURL"

    .line 49
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_URL:Ljava/lang/String;

    const-string v0, "Message"

    .line 50
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->MESSAGE:Ljava/lang/String;

    const-string v0, "Timestamp"

    .line 51
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "SignatureVersion"

    .line 52
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE_VERSION:Ljava/lang/String;

    const-string v0, "Signature"

    .line 53
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE:Ljava/lang/String;

    const-string v0, "MessageId"

    .line 54
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->MESSAGE_ID:Ljava/lang/String;

    const-string v0, "Subject"

    .line 55
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->SUBJECT:Ljava/lang/String;

    const-string v0, "TopicArn"

    .line 56
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->TOPIC:Ljava/lang/String;

    const-string v0, "Token"

    .line 57
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->TOKEN:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Type"

    const-string v2, "SubscribeURL"

    const-string v3, "Message"

    const-string v4, "Timestamp"

    const-string v5, "Signature"

    const-string v6, "SignatureVersion"

    const-string v7, "MessageId"

    const-string v8, "Subject"

    const-string v9, "TopicArn"

    const-string v10, "Token"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->INTERESTING_FIELDS:Ljava/util/Set;

    return-void
.end method

.method private parseJSON(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object p1

    .line 165
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 166
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->beginArray()V

    const-string v2, ""

    const/4 v3, 0x1

    .line 173
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 180
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->endArray()V

    goto :goto_2

    .line 182
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 184
    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 187
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method private publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "Message"

    const-string v2, "MessageId"

    const-string v3, "Subject"

    const-string v4, "Type"

    const-string v5, "Timestamp"

    const-string v6, "TopicArn"

    .line 197
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 198
    aget-object v3, v1, v2

    .line 199
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "SubscribeURL"

    const-string v2, "Message"

    const-string v3, "MessageId"

    const-string v4, "Type"

    const-string v5, "Timestamp"

    const-string v6, "Token"

    const-string v7, "TopicArn"

    .line 208
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 209
    aget-object v3, v1, v2

    .line 210
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {p1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verifyMessageSignature(Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->parseJSON(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->verifySignature(Ljava/util/Map;Ljava/security/PublicKey;)Z

    move-result p1

    return p1
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 1

    .line 135
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode([B)[B

    move-result-object p2

    const-string v0, "SHA1withRSA"

    .line 136
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    .line 137
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 138
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 139
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {p1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public verifySignature(Ljava/util/Map;Ljava/security/PublicKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/PublicKey;",
            ")Z"
        }
    .end annotation

    const-string v0, "SignatureVersion"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Type"

    .line 100
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Signature"

    .line 101
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Notification"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "SubscriptionConfirmation"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, "UnsubscribeConfirmation"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/amazon/kindle/com/amazonaws/services/sns/util/SignatureChecker;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    move-result p1

    goto :goto_1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot process message of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
