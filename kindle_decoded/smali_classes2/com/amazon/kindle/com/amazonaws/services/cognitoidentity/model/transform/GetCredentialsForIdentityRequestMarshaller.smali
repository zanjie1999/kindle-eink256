.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;
.super Ljava/lang/Object;
.source "GetCredentialsForIdentityRequestMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/com/amazonaws/Request<",
        "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 50
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentity"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;-><init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "AWSCognitoIdentityService.GetCredentialsForIdentity"

    const-string v2, "X-Amz-Target"

    .line 53
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;->POST:Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setHttpMethod(Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 57
    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 60
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IdentityId"

    .line 65
    invoke-interface {v2, v4}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 69
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Logins"

    .line 70
    invoke-interface {v2, v4}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 72
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {v2, v5}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object p1

    const-string v3, "CustomRoleArn"

    .line 83
    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-interface {v2, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 87
    :cond_4
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    .line 88
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 89
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 91
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/com/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 92
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "application/x-amz-json-1.1"

    .line 98
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p1

    .line 94
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_6
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(GetCredentialsForIdentityRequest)"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
