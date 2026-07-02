.class public Lcom/amazon/sitb/android/updater/price/PriceScheduler;
.super Lcom/amazon/sitb/android/updater/AbstractScheduler;
.source "PriceScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/updater/AbstractScheduler<",
        "Lcom/amazon/sitb/android/BookPrice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/ITaskRunner;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "price"

    .line 23
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/sitb/android/updater/AbstractScheduler;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handlePriceUpdate(Lcom/amazon/sitb/android/event/PriceUpdatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->getPrice()Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->dataUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/HasExpiration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
