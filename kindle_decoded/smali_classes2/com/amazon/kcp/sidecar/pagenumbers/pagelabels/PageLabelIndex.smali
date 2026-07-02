.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;
.super Ljava/lang/Object;
.source "PageLabelIndex.java"


# static fields
.field private static final MAX_PAGE_LABEL_CACHE_SIZE:I = 0x32


# instance fields
.field private final pageLabelCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pageLabelIndexString:Ljava/lang/String;

.field private final pageLabelSequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;",
            ">;"
        }
    .end annotation
.end field

.field private final startingOrdinalPages:[I

.field private totalArabicPages:I

.field private final totalPages:I

.field private totalRomanPages:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-ltz p2, :cond_7

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelIndexString:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalPages:I

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x32

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelCache:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 66
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x29

    .line 74
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 80
    new-instance v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    invoke-direct {v5, v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->setEndingOrdinalPageNumber(I)V

    .line 84
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v4

    move-object v0, v5

    goto :goto_0

    .line 69
    :cond_3
    new-instance p2, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Each page number scheme must start with \'(\'; was given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 94
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->setEndingOrdinalPageNumber(I)V

    .line 98
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    .line 100
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->startingOrdinalPages:[I

    .line 101
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 102
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 103
    iget-object p2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->startingOrdinalPages:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result p1

    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->calculateTotalPageNumbersForDifferentPageTypes()V

    return-void

    .line 55
    :cond_7
    new-instance p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalPages cannot be less than 0, total pages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_8
    new-instance p2, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageLabelIndexString cannot be blank, pageLabelIndexString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndexParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private calculateTotalPageNumbersForDifferentPageTypes()V
    .locals 4

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalArabicPages:I

    .line 110
    iput v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalRomanPages:I

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 115
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v2, v3, :cond_1

    .line 116
    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalArabicPages:I

    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingOrdinalPageNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalArabicPages:I

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v2, v3, :cond_0

    .line 118
    iget v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalRomanPages:I

    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingOrdinalPageNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalRomanPages:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPageLabelIndexString()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelIndexString:Ljava/lang/String;

    return-object v0
.end method

.method private isBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 377
    :cond_1
    instance-of v2, p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    if-nez v2, :cond_2

    return v1

    .line 380
    :cond_2
    check-cast p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;

    .line 381
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelIndexString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-direct {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelIndexString()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    return v1

    .line 387
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getTotalPages()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getTotalPages()I

    move-result p1

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getHighestOrdinalPageOfType(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;)I
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 198
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 199
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingOrdinalPageNumber()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getEndingOrdinalPageNumber()I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getHighestPageLabel()Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getHighestOrdinalPageOfType(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;)I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getHighestOrdinalPageOfType(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelTextForOrdinalPage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLabelSequences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    return-object v0
.end method

.method public getOrdinalPageForPageLabelText(Ljava/lang/String;)I
    .locals 7

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    .line 326
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 330
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->isLabeled()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v6

    if-gt v6, v4, :cond_2

    move-object v3, v2

    .line 338
    :cond_2
    invoke-virtual {v5, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getOrdinalPageForPageLabelText(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    move-object v3, v5

    move v4, v6

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 344
    iget p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalPages:I

    if-le v4, p1, :cond_4

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    :goto_1
    return v1
.end method

.method public getPageLabelTextForOrdinalPage(I)Ljava/lang/String;
    .locals 3

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getSeqForOrdinalPage(I)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingOrdinalPageNumber()I

    move-result v2

    sub-int/2addr p1, v2

    .line 287
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getStartingPageLabel()I

    move-result v2

    add-int/2addr v2, p1

    .line 288
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelAtSeriesIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getSeqForOrdinalPage(I)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    .line 245
    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalPages:I

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->startingOrdinalPages:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    if-gez p1, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    .line 263
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getTotalArabicPages()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalArabicPages:I

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalPages:I

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalRomanPages:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 360
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getPageLabelIndexString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 363
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getTotalPages()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPaginationArabicOnly()Z
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelSequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 174
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-eq v3, v4, :cond_0

    .line 175
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->INSERT:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-eq v3, v4, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->CUSTOM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageLabelIndex [pageLabelIndexString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->pageLabelIndexString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalPages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->totalPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
