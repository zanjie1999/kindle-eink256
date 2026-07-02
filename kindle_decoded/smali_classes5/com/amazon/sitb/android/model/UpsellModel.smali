.class public Lcom/amazon/sitb/android/model/UpsellModel;
.super Ljava/lang/Object;
.source "UpsellModel.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private failureCode:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/sitb/android/model/UpsellModelListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:I

.field private purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

.field private showAtPercentRead:I

.field private state:Lcom/amazon/sitb/android/model/State;

.field private stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/sitb/android/BookState;",
            "Lcom/amazon/sitb/android/model/State;",
            ">;"
        }
    .end annotation
.end field

.field private upsellAsin:Ljava/lang/String;

.field private upsellPrice:Lcom/amazon/sitb/android/BookPrice;

.field private upsellTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/reftag/ReftagBundleService;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/ReaderActions;",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/updater/Updater<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/reftag/ReftagBundleService;",
            "Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 76
    iput-object p2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 77
    iput-object p8, p0, Lcom/amazon/sitb/android/model/UpsellModel;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    .line 79
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/amazon/sitb/android/BookState;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->stateMap:Ljava/util/Map;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->listeners:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/amazon/sitb/android/model/UpsellModel;->reset()V

    .line 84
    new-instance p1, Lcom/amazon/sitb/android/model/UpsellModel$1;

    invoke-direct {p1, p0, p3, p7}, Lcom/amazon/sitb/android/model/UpsellModel$1;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/reftag/ReftagBundleService;)V

    invoke-virtual {p5, p1}, Lcom/amazon/sitb/android/cache/Cache;->addListener(Lcom/amazon/sitb/android/cache/CacheListener;)V

    .line 97
    new-instance p1, Lcom/amazon/sitb/android/model/UpsellModel$2;

    invoke-direct {p1, p0, p4}, Lcom/amazon/sitb/android/model/UpsellModel$2;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/updater/Updater;)V

    invoke-virtual {p6, p1}, Lcom/amazon/sitb/android/cache/Cache;->addListener(Lcom/amazon/sitb/android/cache/CacheListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/sitb/android/model/UpsellModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    return-object p0
.end method

.method private fireProgressChanged()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/model/UpsellModelListener;

    .line 526
    invoke-interface {v1, p0}, Lcom/amazon/sitb/android/model/UpsellModelListener;->progressChanged(Lcom/amazon/sitb/android/model/UpsellModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStateChanged()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/model/UpsellModelListener;

    .line 518
    invoke-interface {v1, p0}, Lcom/amazon/sitb/android/model/UpsellModelListener;->stateChanged(Lcom/amazon/sitb/android/model/UpsellModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/sitb/android/model/UpsellModelListener;)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addState(Lcom/amazon/sitb/android/model/State;)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->stateMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/sitb/android/model/State;->getBookState()Lcom/amazon/sitb/android/BookState;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 417
    invoke-interface {p1, p0}, Lcom/amazon/sitb/android/model/State;->setModel(Lcom/amazon/sitb/android/model/UpsellModel;)V

    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new state implementation for over existing one for state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized cancelStarted(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 244
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: cancel started: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/model/State;->cancelStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 249
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed cancelStarted(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized downloadFailed(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 217
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: download failed: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/model/State;->downloadFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 222
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed downloadFailed(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized downloadProgress(Ljava/lang/String;I)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 230
    :try_start_0
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "UpsellModel: download rogress: %s - %d (%s)"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object p0, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v4, p1, p2}, Lcom/amazon/sitb/android/model/State;->downloadProgress(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 235
    :try_start_1
    sget-object v5, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v6, "%s: Failed downloadProgress(%s, %d) (%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v8, v7, v2

    aput-object p1, v7, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    aput-object p0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized downloadSucceeded(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 204
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: download success: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/model/State;->downloadSucceeded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 209
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed downloadSucceeded(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getCurrentAsin()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getFailureCode()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 572
    iget v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    return v0
.end method

.method public getPurchaseRecord()Lcom/amazon/sitb/android/PurchaseRecord;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    return-object v0
.end method

.method public getShowAtPercentRead()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->showAtPercentRead:I

    return v0
.end method

.method public getUpsellAsin()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellPrice()Lcom/amazon/sitb/android/BookPrice;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellPrice:Lcom/amazon/sitb/android/BookPrice;

    return-object v0
.end method

.method public getUpsellState()Lcom/amazon/sitb/android/BookState;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v0}, Lcom/amazon/sitb/android/model/State;->getBookState()Lcom/amazon/sitb/android/BookState;

    move-result-object v0

    return-object v0
.end method

.method public getUpsellTitle()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleApplicationResumed(Lcom/amazon/sitb/android/event/ApplicationResumedEvent;)V
    .locals 9
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 369
    :try_start_0
    iget-object v4, p0, Lcom/amazon/sitb/android/model/UpsellModel;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    .line 370
    sget-object v5, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v6, "UpsellModel: application resumed: %s, reader is showing book: %s (%s)"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-static {v4}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object p0, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 371
    invoke-static {v4}, Lcom/amazon/sitb/android/utils/BookUtils;->isRelevantContentType(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    iget-object v5, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v5, v4}, Lcom/amazon/sitb/android/model/State;->bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 378
    sget-object v5, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v6, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    const-string p1, "%s: handleApplicationResumed(%s) (%s)"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized handleBookClosedEvent(Lcom/amazon/sitb/android/event/BookClosedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 314
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: book closed: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookClosedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->bookClosed(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 319
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: handleBookClosedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookDeletedEvent(Lcom/amazon/sitb/android/event/BookDeletedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 342
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: book deleted: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDeletedEvent;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDeletedEvent;->isArchived()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->bookDeleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 347
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: handleBookDeletedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookDownloadStateChangedEvent(Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 328
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: book download state changed: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookDownloadStateChangedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 333
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: handleBookDownloadStateChangedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleBookOpenedEvent(Lcom/amazon/sitb/android/event/BookOpenedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 300
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: book opened: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/BookOpenedEvent;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 305
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: handleBookOpenedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleCancelFailed(Lcom/amazon/sitb/android/event/CancelFailedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 272
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: cancel failed: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/CancelFailedEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/CancelFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->cancelFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 277
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed handleCancelFailed(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleCancelSucceeded(Lcom/amazon/sitb/android/event/CancelSucceededEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 258
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: cancel succeded: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/CancelSucceededEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->cancelSucceeded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 263
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed handleCancelSucceeded(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleOverlayHiddenEvent(Lcom/amazon/sitb/android/event/OverlayHiddenEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 356
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "Upsellmodel: overlay hidden: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3}, Lcom/amazon/sitb/android/model/State;->overlayHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 361
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: handleOverlayHiddenEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handlePriceUpdatedEvent(Lcom/amazon/sitb/android/event/PriceUpdatedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 116
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: price updated: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->getPrice()Lcom/amazon/sitb/android/BookPrice;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->priceUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 121
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed handlePriceUpdatedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handlePurchaseFailed(Lcom/amazon/sitb/android/event/PurchaseFailedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 171
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: purchase failed: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    const-string/jumbo v3, "optimistic-fulfilment-failure"

    .line 172
    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->purchaseError(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->getFailureCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->purchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 183
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed purchaseFailed(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handlePurchaseSuccess(Lcom/amazon/sitb/android/event/PurchaseSucceededEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 157
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: purchase success: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseSucceededEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/PurchaseSucceededEvent;->getPurchaseRecord()Lcom/amazon/sitb/android/PurchaseRecord;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->purchaseSucceeded(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 162
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed purchaseSucceeded(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleRecentCancelTimoutEvent(Lcom/amazon/sitb/android/event/RecentCancelTimoutEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 286
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: recent cancel timeout: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/RecentCancelTimoutEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/model/State;->recentCancelTimeout(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 291
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed handleRecentCancelTimoutEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleSeriesInfoUpdatedEvent(Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 130
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: series info updated: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;->getSeriesInfo()Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/sitb/android/model/State;->seriesUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 135
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed handleSeriesInfoUpdatedEvent(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public hasUpsellBook()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized purchaseError(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 191
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: purchase error: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/model/State;->purchaseError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 196
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed purchaseError(%s, %s) (%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    iget-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    aput-object p1, v6, v2

    const/4 p1, 0x3

    aput-object p0, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purchaseStarted(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 143
    :try_start_0
    sget-object v3, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v4, "UpsellModel: purchase started: %s (%s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/model/State;->purchaseStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 148
    :try_start_1
    sget-object v4, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v5, "%s: Failed purchaseStarted(%s) (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v3}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 433
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "UpsellModel: Resetting model"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 435
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    .line 436
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellTitle:Ljava/lang/String;

    .line 437
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellPrice:Lcom/amazon/sitb/android/BookPrice;

    .line 438
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 439
    iput v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    .line 440
    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    const/4 v0, -0x1

    .line 441
    iput v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->showAtPercentRead:I

    return-void
.end method

.method public setFailureCode(Ljava/lang/String;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 612
    iget v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    if-eq v0, p1, :cond_0

    .line 614
    iput p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    .line 615
    invoke-direct {p0}, Lcom/amazon/sitb/android/model/UpsellModel;->fireProgressChanged()V

    :cond_0
    return-void
.end method

.method public setPurchaseRecord(Lcom/amazon/sitb/android/PurchaseRecord;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    return-void
.end method

.method public setShowAtPercentRead(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->showAtPercentRead:I

    return-void
.end method

.method public setUpsellPrice(Lcom/amazon/sitb/android/BookPrice;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellPrice:Lcom/amazon/sitb/android/BookPrice;

    return-void
.end method

.method public setUpsellTitle(Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellTitle:Ljava/lang/String;

    return-void
.end method

.method public start(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 421
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "UpsellModel: Starting model in state CLOSED"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->stateMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/model/State;

    iput-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    .line 423
    invoke-interface {v0}, Lcom/amazon/sitb/android/model/State;->enter()V

    if-eqz p1, :cond_0

    .line 426
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "UpsellModel: Starting model with a book: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/model/State;->bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method

.method public startUpsellingBook(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)V
    .locals 5

    .line 446
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "UpsellModel: Starting upsell of book (currentBook: %s, upsellAsin: %s, upsellTitle: %s, upsellPrice: %s, upsellShowAtPercentRead: %d)"

    .line 446
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 449
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 450
    iput-object p2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    .line 451
    iput-object p3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellTitle:Ljava/lang/String;

    .line 452
    iput-object p4, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellPrice:Lcom/amazon/sitb/android/BookPrice;

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    .line 454
    iput v3, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    .line 455
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    .line 456
    iput p5, p0, Lcom/amazon/sitb/android/model/UpsellModel;->showAtPercentRead:I

    .line 458
    iget-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->wasCanceledRecently(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    sget-object p1, Lcom/amazon/sitb/android/BookState;->RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/sitb/android/model/UpsellModel;->syncWithReaderState()V

    :goto_0
    return-void
.end method

.method public syncWithReaderState()V
    .locals 4

    .line 470
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "UpsellModel: Trying to sync book state with reader for asin %s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 472
    invoke-virtual {v1, v0, v3}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 471
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transitionToReaderState(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 635
    invoke-static {v1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellAsin:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 637
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "*** Hidden ***"

    :goto_0
    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->upsellPrice:Lcom/amazon/sitb/android/BookPrice;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->failureCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->progress:I

    .line 640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->purchaseRecord:Lcom/amazon/sitb/android/PurchaseRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/amazon/sitb/android/model/UpsellModel;->showAtPercentRead:I

    .line 642
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UpsellModel (state: %s, currentBook: %s, upsellAsin: %s, upsellTitle: %s, upsellPrice: %s, failureCode: %s, progress: %d, purchaseRecord: %s, showAtPercentRead: %d)"

    .line 632
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transition(Lcom/amazon/sitb/android/BookState;)V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    .line 399
    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->stateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/model/State;

    if-eq v0, p1, :cond_0

    .line 403
    sget-object v1, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "UpsellModel: Transitioning from %s to %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 404
    invoke-interface {v0}, Lcom/amazon/sitb/android/model/State;->exit()V

    .line 405
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel;->state:Lcom/amazon/sitb/android/model/State;

    .line 406
    invoke-interface {p1}, Lcom/amazon/sitb/android/model/State;->enter()V

    .line 407
    invoke-direct {p0}, Lcom/amazon/sitb/android/model/UpsellModel;->fireStateChanged()V

    :cond_0
    return-void
.end method

.method public transitionToReaderState(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 5

    .line 477
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 478
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->toString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "UpsellModel: Transitioning to reader state for book %s"

    .line 477
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 481
    sget-object p1, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 485
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/model/UpsellModel$3;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    sget-object p1, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 495
    :cond_2
    sget-object p1, Lcom/amazon/sitb/android/BookState;->DOWNLOADING:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 491
    :cond_3
    sget-object p1, Lcom/amazon/sitb/android/BookState;->DOWNLOADED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 488
    :cond_4
    sget-object p1, Lcom/amazon/sitb/android/BookState;->OWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :goto_0
    return-void
.end method
