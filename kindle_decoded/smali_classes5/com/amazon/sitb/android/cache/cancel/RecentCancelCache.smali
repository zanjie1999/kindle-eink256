.class public Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;
.super Lcom/amazon/sitb/android/cache/Cache;
.source "RecentCancelCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/cache/Cache<",
        "Lcom/amazon/sitb/android/CancelRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final cancelTimeout:J

.field private final clockService:Lcom/amazon/sitb/android/services/ClockService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;JLcom/amazon/sitb/android/services/ClockService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/IPersistentStorage;",
            "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
            "Lcom/amazon/sitb/android/CancelRecord;",
            ">;",
            "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
            "Lcom/amazon/sitb/android/CancelRecord;",
            ">;J",
            "Lcom/amazon/sitb/android/services/ClockService;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/sitb/android/cache/Cache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V

    .line 28
    iput-wide p5, p0, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->cancelTimeout:J

    .line 29
    iput-object p7, p0, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-void
.end method

.method private isValid(J)Z
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->cancelTimeout:J

    sub-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public wasCanceledRecently(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/CancelRecord;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/amazon/sitb/android/CancelRecord;->getTimeCached()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->isValid(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
