.class Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;
.super Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# static fields
.field private static sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$1;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;
    .locals 1

    .line 260
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;

    .line 263
    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;

    return-object p0
.end method


# virtual methods
.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 272
    invoke-static {p1}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method
