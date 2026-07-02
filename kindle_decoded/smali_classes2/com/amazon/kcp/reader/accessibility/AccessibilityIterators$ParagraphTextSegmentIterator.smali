.class Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# static fields
.field private static sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .line 347
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 350
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 2

    if-lez p1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isStartBoundary(I)Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    sub-int/2addr p1, v1

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public following(I)[I
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-ge p1, v0, :cond_3

    .line 366
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 367
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-lt p1, v0, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, v0, :cond_5

    .line 374
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method

.method public preceding(I)[I
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-lez p1, :cond_3

    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-gtz p1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lez v0, :cond_5

    .line 400
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 403
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method
