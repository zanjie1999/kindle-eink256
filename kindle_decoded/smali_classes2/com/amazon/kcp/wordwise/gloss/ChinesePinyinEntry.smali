.class public Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;
.super Ljava/lang/Object;
.source "ChinesePinyinEntry.java"


# instance fields
.field chinese:Ljava/lang/String;

.field corpus_count:I

.field difficulty:I

.field endPosition:I

.field pinyin:Ljava/lang/String;

.field pinyin_frequency:I

.field private rowid:I

.field startPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->rowid:I

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->corpus_count:I

    .line 57
    iput p5, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    .line 58
    iput p6, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin_frequency:I

    .line 59
    iput p7, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    .line 60
    iput p8, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 150
    instance-of v0, p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    iget v2, p1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getEndPosition()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getChinese()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    return-object v0
.end method

.method public getDifficulty()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    return v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getRowid()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->rowid:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    mul-int/lit8 v1, v1, 0x3d

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7f

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    add-int/2addr v0, v1

    return v0
.end method

.method public setChinese(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    return-void
.end method

.method public setDifficulty(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    return-void
.end method

.method public setEndPosition(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public setRowid(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->rowid:I

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChinesePinyinEntry{rowid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->rowid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chinese=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->chinese:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pinyin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", corpus_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->corpus_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", difficulty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pinyin_frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin_frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->startPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->endPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
