.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;
.super Ljava/lang/Object;
.source "PageLabelSeq.java"


# instance fields
.field private customPageLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endingOrdinalPageNumber:I

.field private pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

.field private startingOrdinalPageNumber:I

.field private startingPageLabel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    const/16 v1, 0x2c

    .line 33
    invoke-static {p1, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 34
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    .line 42
    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->endingOrdinalPageNumber:I

    const/4 v2, 0x1

    .line 43
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->getType(C)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-eqz v3, :cond_2

    .line 47
    iput v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    .line 48
    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const/4 v1, 0x2

    if-ne v3, v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    .line 51
    aget-object p1, p1, v1

    const/16 v1, 0x7c

    invoke-static {p1, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-eq v3, v0, :cond_1

    .line 56
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown page numbering scheme "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 238
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 245
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 248
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 249
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 253
    :cond_2
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    .line 70
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPageRange()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingPageLabel()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingPageLabel()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getEndingOrdinalPageNumber()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->endingOrdinalPageNumber:I

    return v0
.end method

.method public getEndingPageLabel()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->endingOrdinalPageNumber:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOrdinalPageForPageLabelText(Ljava/lang/String;)I
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 149
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingPageLabel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    sget-object v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v4, v5, :cond_3

    .line 160
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->isRomanNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->parseRomanNumber(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->intValue()I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingPageLabel()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    move v1, v3

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    sget-object v4, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v3, v4, :cond_4

    .line 170
    iget-object v3, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 171
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    const/4 p1, -0x1

    return p1

    .line 182
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingPageLabel()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public getPageLabelAtSeriesIndex(I)Ljava/lang/String;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_0
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v0, v1, :cond_1

    .line 125
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;-><init>(I)V

    invoke-virtual {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_1
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v0, v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->customPageLabels:Ljava/util/List;

    .line 131
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v2, p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    return-object v0
.end method

.method public getStartingOrdinalPageNumber()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    return v0
.end method

.method public getStartingPageLabel()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingPageLabel:I

    return v0
.end method

.method public isLabeled()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->pageLabelType:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEndingOrdinalPageNumber(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    if-lt p1, v0, :cond_0

    .line 214
    iput p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->endingOrdinalPageNumber:I

    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ending ordinal page number must be >= than starting ordinal page number,endingOrdinalPageNumber  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", startingOrdinalPageNumber = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->startingOrdinalPageNumber:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
