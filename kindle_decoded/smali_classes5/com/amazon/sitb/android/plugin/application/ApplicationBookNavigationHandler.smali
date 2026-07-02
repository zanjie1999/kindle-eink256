.class public Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;
.super Ljava/lang/Object;
.source "ApplicationBookNavigationHandler.java"


# instance fields
.field private final bookPriceAsinMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;

.field private final seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

.field private final seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/updater/price/PriceScheduler;Lcom/amazon/sitb/android/updater/series/SeriesScheduler;Lcom/amazon/sitb/android/cache/series/SeriesCache;Lcom/amazon/sitb/android/ReaderActions;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    .line 38
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    .line 39
    iput-object p3, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    .line 40
    iput-object p4, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    return-void
.end method

.method private checkSeriesInfo(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/sitb/R$string;->series_bar_prepareBuy_reftag_prefix:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->startAutomaticUpdating(Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized handleBookClosed(Lcom/amazon/sitb/android/event/BookClosedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->stopAutomaticUpdating(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->stopAutomaticUpdating(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    invoke-virtual {v1, p1}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->stopAutomaticUpdating(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookOpened(Lcom/amazon/sitb/android/event/BookOpenedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookOpenedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookOpenedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->priceScheduler:Lcom/amazon/sitb/android/updater/price/PriceScheduler;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->sample_bar_prepareBuy_reftag_prefix:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->startAutomaticUpdating(Ljava/lang/String;I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->bookPriceAsinMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->seriesScheduler:Lcom/amazon/sitb/android/updater/series/SeriesScheduler;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->startAutomaticUpdating(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/SeriesInfo;

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->checkSeriesInfo(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleSeriesDataUpdated(Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getSeriesInfo()Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationBookNavigationHandler;->checkSeriesInfo(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
