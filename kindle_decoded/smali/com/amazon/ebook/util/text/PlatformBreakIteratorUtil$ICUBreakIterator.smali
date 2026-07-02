.class Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;
.super Ljava/text/BreakIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICUBreakIterator"
.end annotation


# instance fields
.field private final iterator:Lcom/ibm/icu/text/BreakIterator;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/text/BreakIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/BreakIterator;-><init>()V

    iput-object p1, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public current()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public first()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result p1

    return p1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public isBoundary(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->isBoundary(I)Z

    move-result p1

    return p1
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->next(I)I

    move-result p1

    return p1
.end method

.method public preceding(I)I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    return p1
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;->iterator:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
