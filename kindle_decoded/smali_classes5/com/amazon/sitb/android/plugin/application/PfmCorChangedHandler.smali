.class public Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;
.super Ljava/lang/Object;
.source "PfmCorChangedHandler.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

.field private seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/cache/price/PriceCache;Lcom/amazon/sitb/android/cache/series/SeriesCache;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    .line 25
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    return-void
.end method


# virtual methods
.method public declared-synchronized handlePfmCorChangedEvent(Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;)V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    sget-object p1, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "PFMCORChangedEvent received, clearing price and series caches"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/cache/Cache;->clear()V

    .line 41
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->seriesCache:Lcom/amazon/sitb/android/cache/series/SeriesCache;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/cache/Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
