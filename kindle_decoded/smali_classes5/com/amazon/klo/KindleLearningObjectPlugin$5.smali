.class Lcom/amazon/klo/KindleLearningObjectPlugin$5;
.super Lcom/amazon/kedu/ftue/events/JIT;
.source "KindleLearningObjectPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final BOOK_PERCENT_THRESHOLD:I = 0xa

.field private static final DAYS_SINCE_LAST_SEEN_THRESHOLD:I = 0x7

.field private static final DAYS_SINCE_OPENED_KLO_THRESHOLD:I = 0x1e

.field private static final DISPLAY_THRESHOLD:I = 0x2


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 420
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/ftue/events/JIT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z
    .locals 5

    .line 446
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p2, p2

    const/4 v1, 0x5

    .line 447
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 449
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

    .line 429
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v2

    const-string v3, "klo_opened"

    .line 434
    invoke-virtual {p1, v3}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v3

    .line 436
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/4 p1, 0x7

    .line 439
    invoke-direct {p0, v2, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin$5;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 440
    invoke-direct {p0, v3, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin$5;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
