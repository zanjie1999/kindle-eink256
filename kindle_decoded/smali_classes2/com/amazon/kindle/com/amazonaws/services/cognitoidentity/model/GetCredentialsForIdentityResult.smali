.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
.super Ljava/lang/Object;
.source "GetCredentialsForIdentityResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private credentials:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

.field private identityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 184
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    if-nez v2, :cond_2

    return v1

    .line 186
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    .line 188
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

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

    .line 190
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 191
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

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

    .line 195
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->credentials:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    return-object v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setCredentials(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->credentials:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    return-void
.end method

.method public setIdentityId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->identityId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdentityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
