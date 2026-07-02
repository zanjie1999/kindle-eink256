.class public Lcom/amazon/kedu/flashcards/ftue/Tutorial;
.super Lcom/amazon/kedu/ftue/events/Tutorial;
.source "Tutorial.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kedu/ftue/events/Tutorial;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 4

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$integer;->fc_tutorial_max_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
