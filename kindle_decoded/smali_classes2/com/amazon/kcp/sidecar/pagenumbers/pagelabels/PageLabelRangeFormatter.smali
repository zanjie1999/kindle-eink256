.class public final Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;
.super Ljava/lang/Object;
.source "PageLabelRangeFormatter.java"


# direct methods
.method private static adjustSearchRange([I[I)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    aget v1, p1, v0

    aget v2, p0, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget v1, p1, v0

    aput v1, p0, v0

    :cond_0
    const/4 v0, 0x1

    .line 71
    aget v1, p1, v0

    aget v2, p0, v0

    if-le v1, v2, :cond_1

    .line 72
    aget p1, p1, v0

    aput p1, p0, v0

    :cond_1
    return-void
.end method

.method public static getPageLabelRangeSummary(Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;->initializeSearchRange()[I

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;->initializeSearchRange()[I

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelIndex;->getLabelSequences()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;

    .line 33
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getDisplayPageRange()[I

    move-result-object v7

    .line 35
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v8

    sget-object v9, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ARABIC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 36
    invoke-static {v0, v7}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;->adjustSearchRange([I[I)V

    const/4 v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelSeq;->getPageLabelType()Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    move-result-object v5

    sget-object v8, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;->ROMAN:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelType;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-static {v1, v7}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRangeFormatter;->adjustSearchRange([I[I)V

    const/4 v3, 0x1

    goto :goto_0

    .line 44
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_3

    .line 46
    new-instance v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;

    new-instance v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    aget v7, v1, v2

    invoke-direct {v5, v7}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;-><init>(I)V

    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    aget v1, v1, v6

    invoke-direct {v7, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;-><init>(I)V

    .line 47
    invoke-virtual {v7}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    .line 51
    new-instance v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget v0, v0, v6

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/PageLabelRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static initializeSearchRange()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 77
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7fffffff
        -0x80000000
    .end array-data
.end method
