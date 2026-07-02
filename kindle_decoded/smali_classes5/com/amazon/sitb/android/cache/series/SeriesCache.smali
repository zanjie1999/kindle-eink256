.class public Lcom/amazon/sitb/android/cache/series/SeriesCache;
.super Lcom/amazon/sitb/android/cache/Cache;
.source "SeriesCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/cache/Cache<",
        "Lcom/amazon/sitb/android/SeriesInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/IPersistentStorage;",
            "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/sitb/android/cache/Cache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V

    .line 27
    invoke-interface {p5, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleSeriesInfoUpdate(Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getSeriesInfo()Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/sitb/android/cache/Cache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
