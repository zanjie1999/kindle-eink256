.class public Lcom/amazon/appexpan/client/util/DebugSettings;
.super Ljava/lang/Object;
.source "DebugSettings.java"


# instance fields
.field private isGammaBuild:Z

.field private isPreProdStageOnInitialization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild:Z

    .line 32
    iput-boolean v0, p0, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p1, p1, Lcom/amazon/appexpan/client/util/DebugSettings;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/amazon/appexpan/client/util/DebugSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-virtual {p1, p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization()Z

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v0

    const/16 v1, 0x4f

    const/16 v2, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isGammaBuild()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild:Z

    return v0
.end method

.method public isPreProdStageOnInitialization()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization:Z

    return v0
.end method

.method public setGammaBuild(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugSettings(isGammaBuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreProdStageOnInitialization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
