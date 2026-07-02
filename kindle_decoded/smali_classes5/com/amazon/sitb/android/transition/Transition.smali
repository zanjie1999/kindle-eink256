.class public abstract Lcom/amazon/sitb/android/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field protected final destinationBook:Lcom/amazon/kindle/krx/content/IBook;

.field protected final log:Lcom/amazon/sitb/android/ISamplingLogger;

.field protected final position:Lcom/amazon/kindle/krx/reader/IPosition;

.field protected final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field protected final toast:Landroid/widget/Toast;

.field protected transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    .line 36
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/Transition;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 37
    iput-object p2, p0, Lcom/amazon/sitb/android/transition/Transition;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    .line 38
    iput-object p3, p0, Lcom/amazon/sitb/android/transition/Transition;->toast:Landroid/widget/Toast;

    .line 39
    iput-object p4, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 40
    iput-object p5, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_0

    const-string v2, "<unknown>"

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 52
    invoke-static {v3}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Starting transition to position (%s) in book (%s)"

    .line 50
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v2, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    .line 54
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getDestinationBookId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized handleBookClosed(Lcom/amazon/sitb/android/event/BookClosedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSameBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling toast for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/sitb/android/transition/Transition;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 74
    iget-object p1, p0, Lcom/amazon/sitb/android/transition/Transition;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    invoke-virtual {p1, p0}, Lcom/amazon/sitb/android/transition/TransitionManager;->finished(Lcom/amazon/sitb/android/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookOpened(Lcom/amazon/sitb/android/event/BookOpenedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->destinationBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookOpenedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSameBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "Transition destination book opened, completing transition"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/amazon/sitb/android/transition/Transition;->transitioning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected transitioning()V
    .locals 0

    return-void
.end method
