.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;
.super Ljava/lang/Object;
.source "Owner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bbe980468bb7b1bL


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 115
    instance-of v0, p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 119
    :cond_0
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;

    .line 121
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v4

    :cond_2
    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    if-nez v3, :cond_4

    move-object v3, v4

    .line 135
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Owner [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
