.class public Lcom/audible/hushpuppy/common/network/AsinJSBParam;
.super Ljava/lang/Object;
.source "AsinJSBParam.java"


# instance fields
.field private final amazonAudiobookAsin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amazonAudioBookAsin"
    .end annotation
.end field

.field private final kindleAsin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kindleAsin"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 62
    const-class v2, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    .line 66
    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->kindleAsin:Ljava/lang/String;

    iget-object v3, p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->kindleAsin:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    .line 67
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getKindleAsin()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->kindleAsin:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->kindleAsin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsinJSBParam{kindleAsin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->kindleAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", amazonAudiobookAsin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->amazonAudiobookAsin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
