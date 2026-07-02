.class public final Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;
.super Ljava/lang/Object;
.source "TimedNonpersistingExpirationPolicy.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/service/upsell/price/IExpirationPolicy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final NANO_TO_MILLI:I = 0xf4240


# instance fields
.field private final clock:Lcom/audible/hushpuppy/common/service/IMonotonicRangeClock;

.field private final expirationMs:J

.field private final timestampedIdentifiers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 40
    new-instance v0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;-><init>(JLcom/audible/hushpuppy/common/service/IMonotonicRangeClock;)V

    return-void
.end method

.method protected constructor <init>(JLcom/audible/hushpuppy/common/service/IMonotonicRangeClock;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->timestampedIdentifiers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iput-wide p1, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->expirationMs:J

    .line 57
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->clock:Lcom/audible/hushpuppy/common/service/IMonotonicRangeClock;

    return-void
.end method

.method private now()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->clock:Lcom/audible/hushpuppy/common/service/IMonotonicRangeClock;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/service/IMonotonicRangeClock;->getTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public isExpired(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->timestampedIdentifiers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 76
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Expiration policy still expired"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->now()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->expirationMs:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 81
    iget-object v2, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->timestampedIdentifiers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Expiration policy expired, removing it."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v0

    .line 85
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Expiration policy still valid"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public timestampNow(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->timestampedIdentifiers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/price/TimedNonpersistingExpirationPolicy;->now()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
