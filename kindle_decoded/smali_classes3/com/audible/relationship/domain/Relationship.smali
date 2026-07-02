.class public final Lcom/audible/relationship/domain/Relationship;
.super Ljava/lang/Object;
.source "Relationship.java"


# instance fields
.field private final aBookAmznAsin:Lcom/audible/mobile/domain/Asin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioAmzAsin"
    .end annotation
.end field

.field private final aBookAsin:Lcom/audible/mobile/domain/Asin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioAsin"
    .end annotation
.end field

.field private final audioFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioFormat"
    .end annotation
.end field

.field private final eBookAsin:Lcom/audible/mobile/domain/Asin;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ebookAsin"
    .end annotation
.end field

.field private final isAudioBookOwned:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioBookOwned"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eBookAsin can\'t be null!"

    .line 69
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    iput-object p1, p0, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "aBookAsin can\'t be null!"

    .line 70
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/domain/Asin;

    iput-object p2, p0, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "aBookAmznAsin can\'t be null!"

    .line 72
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 73
    sget-object p3, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    :cond_0
    iput-object p3, p0, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    const-string p1, "audioFormat can\'t be null!"

    .line 74
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/relationship/domain/Relationship;->audioFormat:Ljava/lang/String;

    .line 75
    iput-boolean p5, p0, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 145
    const-class v1, Lcom/audible/relationship/domain/Relationship;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lcom/audible/relationship/domain/Relationship;

    .line 151
    iget-boolean v1, p0, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    iget-boolean v2, p1, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->audioFormat:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/relationship/domain/Relationship;->audioFormat:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->audioFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getEbookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->audioFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-boolean v1, p0, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isAudioBookOwned()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relationship{aBookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->aBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eBookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->eBookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aBookAmznAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/Relationship;->aBookAmznAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAudioBookOwned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
