.class Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;
.super Ljava/lang/Object;
.source "CredentialsStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    .line 83
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const-string v3, "AccessKeyId"

    .line 49
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->setAccessKeyId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "SecretAccessKey"

    .line 54
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->setSecretAccessKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "SessionToken"

    .line 59
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->setSessionToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "Expiration"

    .line 64
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    move-result-object v3

    .line 66
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->setExpiration(Ljava/util/Date;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;

    move-result-object p1

    return-object p1
.end method
