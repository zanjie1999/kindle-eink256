.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "GetCredentialsForIdentityRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customRoleArn:Ljava/lang/String;

.field private identityId:Ljava/lang/String;

.field private logins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

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

    .line 434
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    if-nez v2, :cond_2

    return v1

    .line 436
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 438
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

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

    .line 440
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 443
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

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

    .line 445
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 447
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

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

    .line 449
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 450
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCustomRoleArn()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->customRoleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->logins:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 420
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 421
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 423
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IdentityId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logins: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomRoleArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->getCustomRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCustomRoleArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->customRoleArn:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->identityId:Ljava/lang/String;

    return-object p0
.end method

.method public withLogins(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->logins:Ljava/util/Map;

    return-object p0
.end method
