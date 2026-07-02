.class public Lcom/amazon/device/sync/SyncableDatasetInfo;
.super Ljava/lang/Object;
.source "SyncableDatasetInfo.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private final mType:Lcom/amazon/device/sync/DatasetType;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDataset<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-interface {p1}, Lcom/amazon/device/sync/SyncableDataset;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lcom/amazon/device/sync/SyncableDataset;->getType()Lcom/amazon/device/sync/DatasetType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    .line 27
    invoke-interface {p1}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    .line 19
    iput-object p3, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method static getSyncableDataDirectoryInfo(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDatasetInfo;
    .locals 3

    .line 65
    new-instance v0, Lcom/amazon/device/sync/SyncableDatasetInfo;

    sget-object v1, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    instance-of v0, p1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    .line 76
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getType()Lcom/amazon/device/sync/DatasetType;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/device/sync/DatasetType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2b

    mul-int/lit8 v0, v0, 0x2b

    .line 95
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2b

    .line 96
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", namespace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mType:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDatasetInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
