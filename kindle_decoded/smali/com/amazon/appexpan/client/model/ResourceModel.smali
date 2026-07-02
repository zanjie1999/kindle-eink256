.class public Lcom/amazon/appexpan/client/model/ResourceModel;
.super Ljava/lang/Object;
.source "ResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;,
        Lcom/amazon/appexpan/client/model/ResourceModel$State;,
        Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;,
        Lcom/amazon/appexpan/client/model/ResourceModel$Location;
    }
.end annotation


# instance fields
.field private downloadId:J

.field private downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

.field private location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

.field private name:Ljava/lang/String;

.field private priority:I

.field private refName:Ljava/lang/String;

.field private state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

.field private version:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/appexpan/client/model/ResourceModel$Location;Lcom/amazon/appexpan/client/model/ResourceModel$State;JILcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->priority:I

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->name:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    iput-object p3, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->refName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    iput-object p5, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    iput-wide p6, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->downloadId:J

    iput p8, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->priority:I

    iput-object p9, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    return-void
.end method

.method public static builder()Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 204
    const-class v2, Lcom/amazon/appexpan/client/model/ResourceModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 211
    iget-object v2, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getDownloadId()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->downloadId:J

    return-wide v0
.end method

.method public getDownloadRetry()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    return-object v0
.end method

.method public getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameVersionPair()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->priority:I

    return v0
.end method

.method public getRefName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->refName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setDownloadId(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->downloadId:J

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->priority:I

    return-void
.end method

.method public setState(Lcom/amazon/appexpan/client/model/ResourceModel$State;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceModel(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getDownloadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getDownloadRetry()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
