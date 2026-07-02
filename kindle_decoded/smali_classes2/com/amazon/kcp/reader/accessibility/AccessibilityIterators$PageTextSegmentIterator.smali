.class Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;
.super Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# static fields
.field private static sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    .line 421
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;

    .line 424
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 2

    .line 430
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

    .line 443
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method

.method public preceding(I)[I
    .locals 2

    .line 449
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
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method
