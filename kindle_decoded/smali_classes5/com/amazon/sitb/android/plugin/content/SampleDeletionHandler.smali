.class public Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;
.super Ljava/lang/Object;
.source "SampleDeletionHandler.java"


# instance fields
.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/ReaderActions;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    return-void
.end method


# virtual methods
.method public declared-synchronized handleBookClosed(Lcom/amazon/sitb/android/event/BookClosedEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    sget-object v1, Lcom/amazon/sitb/android/EntryPoint;->ON_BOOK_CLOSED:Lcom/amazon/sitb/android/EntryPoint;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/ReaderActions;->checkAndDeleteSamplesAsync(Lcom/amazon/sitb/android/EntryPoint;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookDownloadStateChangedEvent(Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/SampleDeletionHandler;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    sget-object v1, Lcom/amazon/sitb/android/EntryPoint;->ON_FULL_BOOK_DOWNLOADED:Lcom/amazon/sitb/android/EntryPoint;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/ReaderActions;->checkAndDeleteSamplesAsync(Lcom/amazon/sitb/android/EntryPoint;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
