.class public Lcom/amazon/kindle/observablemodel/ContainerID;
.super Ljava/lang/Object;
.source "ContainerID.java"


# instance fields
.field private mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ContainerID;->mIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 15
    instance-of v0, p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ContainerID;->mIdentifier:Ljava/lang/String;

    check-cast p1, Lcom/amazon/kindle/observablemodel/ContainerID;

    iget-object p1, p1, Lcom/amazon/kindle/observablemodel/ContainerID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ContainerID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ContainerID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ContainerID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
