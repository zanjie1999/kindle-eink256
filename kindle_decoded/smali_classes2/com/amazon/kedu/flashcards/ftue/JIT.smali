.class public Lcom/amazon/kedu/flashcards/ftue/JIT;
.super Lcom/amazon/kedu/ftue/events/JIT;
.source "JIT.java"


# static fields
.field private static final BOOK_PERCENT_THRESHOLD:I = 0xa

.field private static final DAYS_SINCE_LAST_SEEN_THRESHOLD:I = 0x7

.field private static final DAYS_SINCE_OPENED_FLASHCARDS_THRESHOLD:I = 0x1e

.field private static final DISPLAY_THRESHOLD:I = 0x2


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kedu/ftue/events/JIT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z
    .locals 5

    .line 44
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p2, p2

    const/4 v1, 0x5

    .line 45
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->getLastOccurred()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

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
.method public evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 6

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v2

    const-string v3, "flashcards_opened"

    .line 32
    invoke-virtual {p1, v3}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v3

    .line 34
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/4 p1, 0x7

    .line 37
    invoke-direct {p0, v2, p1}, Lcom/amazon/kedu/flashcards/ftue/JIT;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 38
    invoke-direct {p0, v3, p1}, Lcom/amazon/kedu/flashcards/ftue/JIT;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
