.class public Lcom/amazon/sitb/android/model/RecentlyCanceledState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "RecentlyCanceledState.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private final delayBetweenSyncs:J

.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final numSyncs:I

.field private final recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

.field private syncFutures:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final syncRunnable:Ljava/lang/Runnable;

.field private final taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

.field private final timeout:J

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;Lcom/amazon/sitb/android/services/ClockService;JIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/services/BookIdParser;",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            "Lcom/amazon/sitb/android/ITaskRunner;",
            "Lcom/amazon/sitb/android/ReaderActions;",
            "Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;",
            "Lcom/amazon/sitb/android/services/ClockService;",
            "JIJ)V"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/amazon/sitb/android/BookState;->RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 58
    iput-object p5, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    .line 59
    iput-object p7, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    .line 60
    iput-object p8, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    .line 61
    iput-wide p9, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->timeout:J

    .line 62
    iput p11, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->numSyncs:I

    .line 63
    iput-wide p12, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->delayBetweenSyncs:J

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncFutures:Ljava/util/Collection;

    .line 66
    new-instance p1, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;

    invoke-direct {p1, p0, p4}, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;-><init>(Lcom/amazon/sitb/android/model/RecentlyCanceledState;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->timeoutRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance p1, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;

    invoke-direct {p1, p0, p6}, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;-><init>(Lcom/amazon/sitb/android/model/RecentlyCanceledState;Lcom/amazon/sitb/android/ReaderActions;)V

    iput-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method


# virtual methods
.method public bookDeleted(Ljava/lang/String;Z)V
    .locals 1

    .line 140
    iget-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    invoke-virtual {p2, p1}, Lcom/amazon/sitb/android/services/BookIdParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/services/BookIdParser$Info;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;->getAsin()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncFutures:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledFuture;

    .line 145
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 147
    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public downloadProgress(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public enter()V
    .locals 10

    .line 88
    iget-object v0, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/CancelRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Lcom/amazon/sitb/android/CancelRecord;->getTimeCached()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->timeout:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {v4}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/16 v2, 0x1

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    iget-object v5, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->timeoutRunnable:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v2, v3, v6}, Lcom/amazon/sitb/android/ITaskRunner;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 98
    iget-object v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncFutures:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 99
    :goto_0
    iget v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->numSyncs:I

    if-gt v1, v2, :cond_2

    .line 101
    iget-wide v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->delayBetweenSyncs:J

    int-to-long v4, v1

    mul-long v2, v2, v4

    invoke-virtual {v0}, Lcom/amazon/sitb/android/CancelRecord;->getTimeCached()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->timeout:J

    add-long/2addr v6, v8

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    .line 103
    iget-object v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncFutures:Ljava/util/Collection;

    iget-object v3, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->taskRunner:Lcom/amazon/sitb/android/ITaskRunner;

    iget-object v6, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->syncRunnable:Ljava/lang/Runnable;

    iget-wide v7, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->delayBetweenSyncs:J

    mul-long v7, v7, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v8, v4}, Lcom/amazon/sitb/android/ITaskRunner;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s: No cancel record found for upsell asin %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exit()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public recentCancelTimeout(Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method
