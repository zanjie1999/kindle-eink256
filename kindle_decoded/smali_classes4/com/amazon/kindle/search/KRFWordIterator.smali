.class public Lcom/amazon/kindle/search/KRFWordIterator;
.super Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;
.source "KRFWordIterator.java"


# instance fields
.field private dirty:Z

.field private document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

.field private first:Z

.field private lastToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

.field private wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->first:Z

    .line 23
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 30
    iput-object p2, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;->delete()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->delete()V

    :cond_1
    return-void
.end method

.method public first()Z
    .locals 2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->first()V

    .line 81
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->isNull()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 0

    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet supported in KRF 4"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 7

    .line 42
    iget-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->lastToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->getItem()Lcom/amazon/kindle/krf/KRF/Reader/IWord;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IWord;->getId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IWord;->getEndId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v2

    .line 50
    new-instance v3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IWord;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v5

    invoke-static {v2}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    .line 51
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->delete()V

    .line 52
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->delete()V

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IWord;->delete()V

    .line 54
    iput-object v3, p0, Lcom/amazon/kindle/search/KRFWordIterator;->lastToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    return-object v3

    :cond_1
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->lastToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return-object v0
.end method

.method public gotoPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;->gotoPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->first:Z

    :cond_0
    return-void
.end method

.method public next()Z
    .locals 4

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 93
    :cond_0
    iget-boolean v3, p0, Lcom/amazon/kindle/search/KRFWordIterator;->first:Z

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->first()V

    .line 95
    iput-boolean v2, p0, Lcom/amazon/kindle/search/KRFWordIterator;->first:Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->next()V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->isNull()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 7

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 109
    iget v2, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    .line 111
    iget-object v3, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eqz v3, :cond_3

    if-ge v4, p1, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kindle/search/KRFWordIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/amazon/kindle/search/KRFWordIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v6

    if-eqz v6, :cond_2

    if-ne v5, v1, :cond_1

    .line 121
    iget v2, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    move v5, v2

    .line 123
    :cond_1
    iget-object v2, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget v2, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_3
    new-instance p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    return-object p1
.end method

.method public previous()Z
    .locals 4

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/amazon/kindle/search/KRFWordIterator;->dirty:Z

    .line 143
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 146
    :cond_0
    iget-boolean v3, p0, Lcom/amazon/kindle/search/KRFWordIterator;->first:Z

    if-eqz v3, :cond_1

    return v2

    .line 149
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBiDirectionalWordIterator;->previous()V

    .line 150
    iget-object v1, p0, Lcom/amazon/kindle/search/KRFWordIterator;->wordIterator:Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;->isNull()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
