.class public Lcom/amazon/ea/purchase/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;,
        Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;,
        Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;,
        Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;,
        Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;
    }
.end annotation


# static fields
.field private static final DELAY_BETWEEN_CHECKS_MS:J = 0x3e8L

.field private static final NUM_CHECKS_PER_SYNC:I = 0x5

.field private static final NUM_SYNC_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.PurchaseManager"

.field private static instance:Lcom/amazon/ea/purchase/PurchaseManager;

.field private static oneTapActionLatencyMetricsReporter:Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final borrowingAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelingAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private final downloadPercentage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private lastAcquiredAsin:Ljava/lang/String;

.field private libraryEventListener:Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final listenersByAsin:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final offerCache:Lcom/amazon/ea/purchase/cache/OfferCache;

.field private final purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

.field private final purchasingAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->cancelingAsins:Ljava/util/Set;

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->lastAcquiredAsin:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadPercentage:Ljava/util/Map;

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 130
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 131
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 132
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseClientSelector;

    invoke-direct {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClientSelector;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

    .line 133
    new-instance p1, Lcom/amazon/ea/purchase/cache/OfferCache;

    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClientSelector;->getGlideV2PurchaseClient()Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

    invoke-virtual {v1}, Lcom/amazon/ea/purchase/PurchaseClientSelector;->getLegacyPurchaseClient()Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/ea/purchase/cache/OfferCache;-><init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;)V

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager;->offerCache:Lcom/amazon/ea/purchase/cache/OfferCache;

    .line 134
    new-instance p1, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    invoke-direct {p1}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;-><init>()V

    sput-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->oneTapActionLatencyMetricsReporter:Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->getBookAfterOwnershipChange(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->submitDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->cleanupAcquisition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/util/Set;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->cancelingAsins:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadPercentage:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/PurchaseClientSelector;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->metricWithPurchaseClient(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/cache/OfferCache;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->offerCache:Lcom/amazon/ea/purchase/cache/OfferCache;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/ea/purchase/PurchaseClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/purchase/PurchaseManager;->executePrepareBuy(Lcom/amazon/ea/purchase/PurchaseClient;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->lastAcquiredAsin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager;->lastAcquiredAsin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->oneTapActionLatencyMetricsReporter:Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupAcquisition(Ljava/lang/String;)V
    .locals 2

    .line 1017
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/purchase/PurchaseManager;->lastAcquiredAsin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    :cond_0
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string v1, "All pending acquisitions completed, resetting."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/amazon/ea/purchase/PurchaseManager;->lastAcquiredAsin:Ljava/lang/String;

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1023
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1024
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method private executePrepareBuy(Lcom/amazon/ea/purchase/PurchaseClient;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/purchase/PurchaseClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 589
    invoke-interface {p1, p2, p3}, Lcom/amazon/ea/purchase/PurchaseClient;->getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 590
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 591
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No result for price [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->store()V

    .line 596
    invoke-direct {p0, p3}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBookAfterOwnershipChange(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 10

    .line 610
    new-instance v6, Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;-><init>(Ljava/lang/String;JJ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    const-string v2, ")"

    const-string v3, " of "

    if-lez v1, :cond_1

    .line 619
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    sget-object v4, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting sync ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v5, Lcom/amazon/kindle/krx/application/SyncType;->TODO:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    .line 623
    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v5, Lcom/amazon/kindle/krx/application/SyncType;->META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    const-wide/16 v7, 0x3e8

    .line 628
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 629
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 630
    sget-object v7, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking ownership ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_2
    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v5, p1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 637
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->oneTapActionLatencyMetricsReporter:Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    .line 639
    invoke-virtual {v6}, Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {v6}, Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;->getStartTime()J

    move-result-wide v2

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, v6

    .line 638
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;->copy(Ljava/lang/String;JJ)Lcom/amazon/ea/metrics/OneTapOwnershipTransitionLatencyPayload;

    move-result-object v0

    .line 637
    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;->reportActionLatency(Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;)V

    .line 643
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string v0, "Ownership complete!"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/ea/purchase/PurchaseManager;
    .locals 3

    const-class v0, Lcom/amazon/ea/purchase/PurchaseManager;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/amazon/ea/purchase/PurchaseManager;->instance:Lcom/amazon/ea/purchase/PurchaseManager;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/amazon/ea/purchase/PurchaseManager;

    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v1, Lcom/amazon/ea/purchase/PurchaseManager;->instance:Lcom/amazon/ea/purchase/PurchaseManager;

    .line 121
    :cond_0
    sget-object v1, Lcom/amazon/ea/purchase/PurchaseManager;->instance:Lcom/amazon/ea/purchase/PurchaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isNetworkUnavailable()Z
    .locals 4

    .line 669
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "WirelessNotConnected"

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 670
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wireless is not connected"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v2, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static metricWithPurchaseClient(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;
    .locals 0

    .line 1070
    instance-of p1, p1, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    if-eqz p1, :cond_0

    const-string p1, "GlideV2"

    .line 1071
    invoke-static {p0, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private notifyListeners(Ljava/lang/String;)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object p1

    .line 527
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;

    .line 528
    iget-object v2, p1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;->onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private postNotifyListeners(Ljava/lang/String;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 501
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 506
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->notifyListeners(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseManager$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager$1;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private submitDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 656
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string v1, "Requesting download..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 659
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string v0, "Download request failed"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public borrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "OneClickBorrowAttempted"

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object v1

    .line 397
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    iget-object v3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "]"

    if-nez v2, :cond_0

    .line 398
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Book state not applicable for borrow [state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "PurchaseManagerBorrow"

    .line 402
    invoke-static {v2}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 404
    :try_start_0
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 405
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    sget-object v4, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "borrow [asin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", refTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/amazon/ea/purchase/PurchaseManager;->isNetworkUnavailable()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 443
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 415
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v5, Lcom/amazon/kindle/krx/application/SyncType;->JOURNAL_UPLOAD:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    .line 418
    sget-object v4, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result v4

    const-string v5, "PurchasingIsProtected"

    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v4, :cond_3

    .line 420
    sget-object p3, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "purchase protected; opening detail page"

    invoke-static {p3, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p3, p1, v0, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    const-string v1, "BookIsNotBorrowable"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v2, :cond_5

    .line 425
    sget-object p3, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string v0, "book is not KU; opening detail page"

    invoke-static {p3, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p3, p1, v0, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_5
    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 432
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling borrow [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :goto_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 444
    throw p1
.end method

.method public buy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "InlinePurchaseAttempted"

    .line 267
    invoke-virtual {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object v1

    .line 268
    sget-object v2, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    iget-object v3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "]"

    if-nez v2, :cond_0

    .line 269
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Book state not applicable for buy [state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "PurchaseManagerBuy"

    .line 273
    invoke-static {v2}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 275
    :try_start_0
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 276
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    sget-object v4, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buy [asin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", price="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", refTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/amazon/ea/purchase/PurchaseManager;->isNetworkUnavailable()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 320
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 286
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v5, Lcom/amazon/kindle/krx/application/SyncType;->JOURNAL_UPLOAD:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    .line 289
    sget-object v4, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result v4

    const-string v5, "PurchasingIsProtected"

    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v4, :cond_3

    .line 291
    sget-object p2, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "purchase protected; attempting purchase via device store"

    invoke-static {p2, p4}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    invoke-interface {p2, p1, p3}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadInitiatePurchase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->buyable()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    const-string v4, "BookNotBuyable"

    invoke-static {v2, v4}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v2, :cond_5

    .line 296
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "not buyable; opening detail page"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    iget-object p2, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    sget-object p4, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1, p2, p4, p3}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {v1}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isBorrowable()Z

    move-result v1

    const-string v2, "BookIsBorrowable"

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v1, :cond_6

    .line 301
    sget-object p2, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    const-string p4, "book is KU; opening detail page"

    invoke-static {p2, p4}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    sget-object p4, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p2, p1, p4, p3}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_6
    invoke-static {v0, v5}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 308
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling buy [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :goto_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 321
    throw p1
.end method

.method public cleanup()V
    .locals 0

    .line 538
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->cleanup()V

    .line 539
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->cleanup()V

    .line 540
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->cleanup()V

    .line 543
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->clear()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 552
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 553
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->cancelingAsins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 556
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->clear()V

    .line 557
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->clear()V

    .line 558
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->clear()V

    .line 559
    invoke-static {}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->clear()V

    .line 561
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchaseClientSelector:Lcom/amazon/ea/purchase/PurchaseClientSelector;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClientSelector;->select()Lcom/amazon/ea/purchase/PurchaseClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/PurchaseClient;->clear()V

    return-void
.end method

.method public declared-synchronized getLibraryEventListener()Lcom/amazon/kindle/krx/library/ILibraryEventListener;
    .locals 2

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryEventListener:Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/ea/purchase/PurchaseManager$1;)V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryEventListener:Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryEventListener:Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;
    .locals 13

    .line 146
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadPercentage:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v9, v3

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 153
    :goto_1
    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager;->offerCache:Lcom/amazon/ea/purchase/cache/OfferCache;

    invoke-virtual {v3, p1}, Lcom/amazon/ea/purchase/cache/OfferCache;->fetch(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    invoke-virtual {v2}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->getOffer()Lcom/amazon/ea/purchase/model/BookOffer;

    move-result-object v2

    :cond_2
    move-object v7, v2

    .line 158
    invoke-static {p1}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getPurchaseRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseRecord;

    move-result-object v2

    .line 159
    invoke-static {p1}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->getFailRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord;

    move-result-object v8

    .line 160
    invoke-static {p1}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->getCancelRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/CancelRecord;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v8, :cond_4

    .line 166
    iget-object v0, v8, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v5, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROW_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASE_FAILED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_6

    .line 170
    iget-boolean v0, v3, Lcom/amazon/ea/purchase/model/CancelRecord;->success:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 172
    :cond_6
    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager;->purchasingAsins:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 174
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->PURCHASING:Lcom/amazon/ea/purchase/model/PurchaseState;

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 176
    :cond_7
    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager;->borrowingAsins:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 178
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->BORROWING:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 180
    :cond_8
    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager;->cancelingAsins:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->CANCELING:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_d

    .line 186
    sget-object v5, Lcom/amazon/ea/purchase/PurchaseManager$2;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_c

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_b

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    .line 199
    sget-object v5, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Library has an unknown state, assuming unowned [state="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 196
    :cond_a
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 193
    :cond_b
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADING:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 188
    :cond_c
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->DOWNLOADED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 206
    :cond_d
    sget-object v0, Lcom/amazon/ea/purchase/model/PurchaseState;->UNOWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    goto :goto_2

    .line 210
    :goto_3
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapFakePurchasesEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_e

    const/4 v10, 0x1

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    :goto_4
    if-eqz v3, :cond_f

    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    :goto_5
    if-eqz v8, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    .line 214
    :goto_6
    sget-object v6, Lcom/amazon/ea/purchase/model/PurchaseState;->OWNED:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 216
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/amazon/ea/purchase/model/PurchaseInfo;-><init>(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseState;Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/model/FailRecord;IZZZ)V

    return-object v0

    .line 219
    :cond_11
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseInfo;

    if-eqz v2, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_7
    if-eqz v3, :cond_13

    const/4 v11, 0x1

    goto :goto_8

    :cond_13
    const/4 v11, 0x0

    :goto_8
    if-eqz v8, :cond_14

    const/4 v12, 0x1

    goto :goto_9

    :cond_14
    const/4 v12, 0x0

    :goto_9
    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/amazon/ea/purchase/model/PurchaseInfo;-><init>(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseState;Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/model/FailRecord;IZZZ)V

    return-object v0
.end method

.method public onDownloadProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 4

    .line 565
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 566
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 567
    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->parseForAsinFromBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 568
    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    .line 570
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    .line 571
    :cond_3
    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadPercentage:Ljava/util/Map;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-direct {p0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method public prepareBuy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 233
    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public prepareBuy(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling prepareBuy [asins="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", refTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "InlineCancelAttempted"

    .line 341
    invoke-virtual {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->getPurchaseInfo(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseInfo;

    move-result-object v1

    .line 342
    iget-boolean v2, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    const-string v3, "]"

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v2}, Lcom/amazon/ea/purchase/model/PurchaseState;->isOwned()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 348
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    sget-object v1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unBuy [asin="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", refTag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "PurchaseManagerUnBuy"

    .line 351
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 355
    invoke-direct {p0}, Lcom/amazon/ea/purchase/PurchaseManager;->isNetworkUnavailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 379
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 360
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->cancelingAsins:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->postNotifyListeners(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v2, p1, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    sget-object v2, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling download [asin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_3
    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->cancelDownload(Ljava/lang/String;)V

    .line 373
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    sget-object v1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling unBuy [asin="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x1

    .line 376
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 380
    throw p1

    .line 343
    :cond_6
    :goto_0
    sget-object p1, Lcom/amazon/ea/purchase/PurchaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Book state not applicable for unBuy [state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", recentlyPurchased="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, v1, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 477
    iget-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager;->listenersByAsin:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
