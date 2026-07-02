.class Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;
.super Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field private static sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 85
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 80
    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object p0
.end method


# virtual methods
.method public following(I)[I
    .locals 3

    .line 97
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

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return-object v1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    return-object v1

    .line 118
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 149
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 152
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 162
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public preceding(I)[I
    .locals 3

    .line 123
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

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return-object v1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    return-object v1

    .line 144
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p1

    return-object p1
.end method
