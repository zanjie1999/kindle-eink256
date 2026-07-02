.class public final Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;
.super Ljava/lang/Object;
.source "CachedPrices.java"


# static fields
.field private static final HOURS_TO_EXPIRE:I = 0x3


# instance fields
.field private final cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final priceExpirationPolicy:Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 4

    .line 54
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;)V

    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->priceExpirationPolicy:Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public getPrice(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 83
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->priceExpirationPolicy:Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;

    invoke-interface {v2, p1}, Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;->isExpired(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 85
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method public updatePrice(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 2

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/upsell/PriceData;

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Lcom/audible/hushpuppy/common/upsell/PriceData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->cachedPriceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->priceExpirationPolicy:Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;->timestampNow(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;

    invoke-direct {v1, p1, p2}, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
