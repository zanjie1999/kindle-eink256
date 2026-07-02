.class public Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "AssumeRoleWithWebIdentityResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const-string v3, "Credentials"

    .line 51
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setCredentials(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;)V

    goto :goto_0

    :cond_2
    const-string v3, "SubjectFromWebIdentityToken"

    .line 56
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    .line 59
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setSubjectFromWebIdentityToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "AssumedRoleUser"

    .line 62
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;

    move-result-object v3

    .line 65
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setAssumedRoleUser(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumedRoleUser;)V

    goto :goto_0

    :cond_4
    const-string v3, "PackedPolicySize"

    .line 68
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setPackedPolicySize(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    const-string v3, "Provider"

    .line 73
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setProvider(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "Audience"

    .line 78
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->setAudience(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 84
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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object p1

    return-object p1
.end method
