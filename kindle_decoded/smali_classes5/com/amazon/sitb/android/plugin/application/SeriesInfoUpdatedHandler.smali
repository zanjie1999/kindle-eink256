.class public Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;
.super Ljava/lang/Object;
.source "SeriesInfoUpdatedHandler.java"


# instance fields
.field private final priceUpdater:Lcom/amazon/sitb/android/updater/Updater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/updater/Updater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    return-void
.end method


# virtual methods
.method public declared-synchronized handleSeriesInfoUpdated(Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getSeriesInfo()Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesInfo;->hasNextBookAsin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/SeriesInfoUpdatedHandler;->priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getSeriesInfo()Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/sitb/R$string;->series_bar_prepareBuy_reftag_prefix:I

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
