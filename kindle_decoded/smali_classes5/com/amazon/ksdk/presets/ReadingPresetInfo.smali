.class public final Lcom/amazon/ksdk/presets/ReadingPresetInfo;
.super Ljava/lang/Object;
.source "ReadingPresetInfo.java"


# instance fields
.field final mActive:Z

.field final mBuiltInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

.field final mId:I

.field final mName:Ljava/lang/String;

.field final mType:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field final mVisible:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/ksdk/presets/ReadingPresetType;Lcom/amazon/ksdk/presets/BuiltInPresetType;ZZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mId:I

    .line 29
    iput-object p2, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mType:Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 31
    iput-object p4, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mBuiltInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    .line 32
    iput-boolean p5, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mActive:Z

    .line 33
    iput-boolean p6, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mVisible:Z

    return-void
.end method


# virtual methods
.method public getActive()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mActive:Z

    return v0
.end method

.method public getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mBuiltInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mType:Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadingPresetInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mType:Lcom/amazon/ksdk/presets/ReadingPresetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mBuiltInType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mBuiltInType:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
