.class Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;
.super Ljava/lang/Object;
.source "CredentialsJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;",
        "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    .line 63
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;-><init>()V

    .line 35
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 36
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessKeyId"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->setAccessKeyId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "SecretKey"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->setSecretKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "SessionToken"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 46
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->setSessionToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "Expiration"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->setExpiration(Ljava/util/Date;)V

    goto :goto_0

    .line 51
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 54
    :cond_5
    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->endObject()V

    return-object v1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object p1

    return-object p1
.end method
