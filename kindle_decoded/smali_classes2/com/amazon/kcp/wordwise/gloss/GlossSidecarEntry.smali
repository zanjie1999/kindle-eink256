.class public Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;
.super Ljava/lang/Object;
.source "GlossSidecarEntry.java"


# instance fields
.field private final difficulty:I

.field private final isLowConfidence:Z

.field private isSuppressed:Z

.field private final lastStartPosition:I

.field private override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

.field private final sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

.field private final startPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;IIIZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->startPosition:I

    .line 31
    iput p4, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->difficulty:I

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    .line 33
    iput-boolean p5, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence:Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    if-nez p3, :cond_0

    if-lez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iput p3, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->lastStartPosition:I

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iput p2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->lastStartPosition:I

    :goto_1
    return-void
.end method


# virtual methods
.method public getDifficulty()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->difficulty:I

    return v0
.end method

.method public getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    return-object v0
.end method

.method public getLastStartPosition()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->lastStartPosition:I

    return v0
.end method

.method public getOriginalGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    return-object v0
.end method

.method public getOriginalSenseId()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v0

    return v0
.end method

.method public getSenseId()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v0

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v0

    return v0
.end method

.method public getShortDefinition()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->startPosition:I

    return v0
.end method

.method public isLowConfidence()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isLowConfidence:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuppressed()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isSuppressed:Z

    return v0
.end method

.method public setOverride(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->override:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    return-void
.end method

.method public setSuppressed(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isSuppressed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Gloss: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "gloss="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "start="

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->startPosition:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "lastStart="

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->lastStartPosition:I

    if-eq v2, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "difficulty="

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->difficulty:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "senseId="

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->sense:Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
