.class public Lcom/amazon/appexpan/client/model/ResourceModel$Location;
.super Ljava/lang/Object;
.source "ResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field private encrypted:Z

.field private fileName:Ljava/lang/String;

.field private localLocationType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->localLocationType:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    instance-of p1, p1, Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    invoke-virtual {p1, p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    iget-boolean p1, p1, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalLocationType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->localLocationType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0}, Lcom/amazon/appexpan/client/util/CipherUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    iget-boolean v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x4f

    goto :goto_4

    :cond_4
    const/16 v1, 0x61

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setUrl(Ljava/lang/String;Z)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->url:Ljava/lang/String;

    .line 130
    iput-boolean p2, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceModel.Location(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localLocationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->encrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
