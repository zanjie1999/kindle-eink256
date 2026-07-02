.class public Lcom/amazon/appexpan/client/model/ResourceSetModel;
.super Ljava/lang/Object;
.source "ResourceSetModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;,
        Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;,
        Lcom/amazon/appexpan/client/model/ResourceSetModel$State;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

.field private state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field private version:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/amazon/appexpan/client/model/ResourceSetModel$State;Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    iput-object p3, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    iput-object p4, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-void
.end method

.method public static builder()Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;-><init>()V

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

    .line 133
    const-class v2, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 140
    iget-object v2, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    iget p1, p1, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameVersionPair()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object v0
.end method

.method public getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setState(Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceSetModel(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getPriority()Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
