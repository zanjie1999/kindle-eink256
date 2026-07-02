.class Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;
.super Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# static fields
.field private static sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$1;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;
    .locals 1

    .line 170
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;

    .line 173
    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;

    return-object p0
.end method

.method private isEndBoundary(I)Z
    .locals 1

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 243
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLetterOrDigit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 250
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isStartBoundary(I)Z
    .locals 2

    .line 238
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sub-int/2addr p1, v1

    .line 239
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public following(I)[I
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 198
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return-object v1

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 205
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v1
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 182
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public preceding(I)[I
    .locals 3

    .line 213
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
    const/4 v0, -0x1

    if-lez p1, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 224
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    return-object v1

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    if-eq v2, v0, :cond_5

    .line 231
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v1
.end method
