.class public Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
.super Ljava/lang/Object;
.source "ResourceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceModelBuilder"
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
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/appexpan/client/model/ResourceModel;
    .locals 11

    .line 24
    new-instance v10, Lcom/amazon/appexpan/client/model/ResourceModel;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->name:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->version:I

    iget-object v3, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->refName:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    iget-object v5, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    iget-wide v6, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadId:J

    iget v8, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->priority:I

    iget-object v9, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/appexpan/client/model/ResourceModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/appexpan/client/model/ResourceModel$Location;Lcom/amazon/appexpan/client/model/ResourceModel$State;JILcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V

    return-object v10
.end method

.method public downloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadId:J

    return-object p0
.end method

.method public downloadRetry(Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    return-object p0
.end method

.method public location(Lcom/amazon/appexpan/client/model/ResourceModel$Location;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public refName(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->refName:Ljava/lang/String;

    return-object p0
.end method

.method public state(Lcom/amazon/appexpan/client/model/ResourceModel$State;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceModel.ResourceModelBuilder(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->refName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->location:Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->state:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadRetry:Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version(I)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;
    .locals 0

    .line 24
    iput p1, p0, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->version:I

    return-object p0
.end method
