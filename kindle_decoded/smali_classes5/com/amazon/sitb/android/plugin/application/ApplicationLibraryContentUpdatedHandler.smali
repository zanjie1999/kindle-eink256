.class public Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;
.super Ljava/lang/Object;
.source "ApplicationLibraryContentUpdatedHandler.java"


# instance fields
.field private final bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

.field private final priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

.field private final priceUpdater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

.field private final seriesInfoUpdater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/cache/price/PriceCache;Lcom/amazon/sitb/android/cache/series/SeriesCache;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/services/BookIdParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/price/PriceCache;",
            "Lcom/amazon/sitb/android/cache/series/SeriesCache;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/services/BookIdParser;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    .line 36
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    .line 37
    iput-object p3, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    .line 38
    iput-object p4, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->seriesInfoUpdater:Lcom/amazon/sitb/android/updater/Updater;

    .line 39
    iput-object p5, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    return-void
.end method

.method private handleRemoval(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-virtual {p2, p1}, Lcom/amazon/sitb/android/cache/Cache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/sitb/android/SeriesInfo;

    if-eqz p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/cache/Cache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-virtual {p2, p1}, Lcom/amazon/sitb/android/cache/Cache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private handleUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 69
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/sitb/R$string;->sample_bar_prepareBuy_reftag_prefix:I

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->seriesInfoUpdater:Lcom/amazon/sitb/android/updater/Updater;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized handleBookDeleted(Lcom/amazon/sitb/android/event/BookDeletedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDeletedEvent;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/services/BookIdParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/services/BookIdParser$Info;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;->isFullBook()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->handleRemoval(Ljava/lang/String;Z)V
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

.method public declared-synchronized handleBookDownloadStateChanged(Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->getPreviousDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne p1, v1, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->handleRemoval(Ljava/lang/String;Z)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq p1, v1, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq p1, v1, :cond_1

    .line 53
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryContentUpdatedHandler;->handleUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
