.class public Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "AssumeRoleWithWebIdentityRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private policy:Ljava/lang/String;

.field private providerId:Ljava/lang/String;

.field private roleArn:Ljava/lang/String;

.field private roleSessionName:Ljava/lang/String;

.field private webIdentityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
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

    .line 1198
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    if-nez v2, :cond_2

    return v1

    .line 1200
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 1202
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

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

    .line 1204
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1206
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

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

    .line 1208
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1209
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1211
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

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

    .line 1213
    :cond_d
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1214
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1216
    :cond_e
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

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

    .line 1218
    :cond_11
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1219
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1221
    :cond_12
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 1223
    :cond_15
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1225
    :cond_16
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 1227
    :cond_19
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1228
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->providerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleArn()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->roleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleSessionName()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->roleSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getWebIdentityToken()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->webIdentityToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1179
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1181
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1183
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1184
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1185
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1187
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RoleArn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RoleSessionName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebIdentityToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getWebIdentityToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProviderId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DurationSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v1, "}"

    .line 1170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->durationSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public withRoleArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->roleArn:Ljava/lang/String;

    return-object p0
.end method

.method public withRoleSessionName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->roleSessionName:Ljava/lang/String;

    return-object p0
.end method

.method public withWebIdentityToken(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->webIdentityToken:Ljava/lang/String;

    return-object p0
.end method
