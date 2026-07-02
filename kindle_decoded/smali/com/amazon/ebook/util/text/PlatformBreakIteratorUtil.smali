.class Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 1

    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    new-instance v0, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;

    invoke-direct {v0, p0}, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil$ICUBreakIterator;-><init>(Lcom/ibm/icu/text/BreakIterator;)V

    return-object v0
.end method
