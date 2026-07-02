.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private secretKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
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

    .line 278
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    if-nez v2, :cond_2

    return v1

    .line 280
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    .line 282
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

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

    .line 284
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 285
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 287
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

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

    .line 289
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 292
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

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

    .line 294
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 295
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 297
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 299
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 300
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 263
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessKeyId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecretKey: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
