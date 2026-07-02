.class public Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;
.super Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;
.source "QueryStringSigner.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/Signer;


# instance fields
.field private overriddenDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;-><init>()V

    return-void
.end method

.method private calculateStringToSignV1(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 102
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 104
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private calculateStringToSignV2(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    .line 121
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POST"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedEndpoint(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->getCanonicalizedResourcePath(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCanonicalizedResourcePath(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_3
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string p1, "//"

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private getFormattedTimestamp(I)Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 167
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 169
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->overriddenDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getSignatureDate(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecurityToken"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;->V2:Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V

    return-void
.end method

.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;",
            "Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .line 62
    instance-of v0, p4, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object p4

    .line 67
    invoke-interface {p4}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWSAccessKeyId"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignatureVersion"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getTimeOffset(Lcom/amazon/kindle/com/amazonaws/Request;)I

    move-result v0

    .line 71
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->getFormattedTimestamp(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timestamp"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    instance-of v0, p4, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz v0, :cond_1

    .line 74
    move-object v0, p4

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V

    .line 78
    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;->V1:Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->calculateStringToSignV1(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;->V2:Lcom/amazon/kindle/com/amazonaws/auth/SignatureVersion;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SignatureMethod"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/QueryStringSigner;->calculateStringToSignV2(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p2

    .line 88
    :goto_0
    invoke-interface {p4}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object p4

    .line 87
    invoke-virtual {p0, p2, p4, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Signature"

    .line 89
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_3
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string p2, "Invalid Signature Version specified"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
