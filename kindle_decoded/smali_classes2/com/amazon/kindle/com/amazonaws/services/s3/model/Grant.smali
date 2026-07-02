.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;
.super Ljava/lang/Object;
.source "Grant.java"


# instance fields
.field private grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

.field private permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;


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

    .line 86
    :cond_1
    const-class v2, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 88
    :cond_2
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;

    .line 89
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    if-nez v2, :cond_3

    .line 90
    iget-object v2, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    if-eqz v2, :cond_4

    return v1

    .line 92
    :cond_3
    iget-object v3, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    iget-object p1, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getGrantee()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    return-object v0
.end method

.method public getPermission()Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Grant;->permission:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
