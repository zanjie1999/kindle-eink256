.class public Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
.super Ljava/lang/Object;
.source "ResourceSetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceSetModelBuilder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

.field private state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field private version:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 5

    .line 17
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->name:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->version:I

    iget-object v3, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    iget-object v4, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/appexpan/client/model/ResourceSetModel;-><init>(Ljava/lang/String;ILcom/amazon/appexpan/client/model/ResourceSetModel$State;Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;)V

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public priority(Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object p0
.end method

.method public state(Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceSetModel.ResourceSetModelBuilder(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->priority:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version(I)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;
    .locals 0

    .line 17
    iput p1, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->version:I

    return-object p0
.end method
