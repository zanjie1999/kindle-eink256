.class Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;
.super Lcom/amazon/kedu/ftue/events/JIT;
.source "NotebookTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->registerNotebookFTUETutorial(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final BOOK_PERCENT_THRESHOLD:I = 0xa

.field private static final DAYS_SINCE_LAST_SEEN_THRESHOLD:I = 0x7

.field private static final DAYS_SINCE_OPENED_NOTEBOOK_THRESHOLD:I = 0x1e

.field private static final DISPLAY_THRESHOLD:I = 0x2

.field private static final MIN_ANNOTATIONS_THRESHOLD:I = 0x3


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/ftue/events/JIT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getNumberOfAnnotations()I
    .locals 2

    .line 110
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z
    .locals 5

    .line 120
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p2, p2

    const/4 v1, 0x5

    .line 121
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 123
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

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v2

    const-string v3, "notebook_opened"

    .line 100
    invoke-virtual {p1, v3}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/4 p1, 0x7

    .line 103
    invoke-direct {p0, v2, p1}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    .line 104
    invoke-direct {p0, v3, p1}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;->isOlderThanDays(Lcom/amazon/kedu/ftue/data/EventRecord;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;->getNumberOfAnnotations()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 106
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
