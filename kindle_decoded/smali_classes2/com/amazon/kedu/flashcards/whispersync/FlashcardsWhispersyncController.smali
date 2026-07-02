.class public final Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$SingletonHolder;,
        Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;,
        Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;,
        Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;
    }
.end annotation


# static fields
.field private static final CARDS_NAMESPACE:Ljava/lang/String; = "LearningCards"

.field private static final DECKS_NAMESPACE:Ljava/lang/String; = "LearningDecks"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.whispersync.FlashcardsWhispersyncController"


# instance fields
.field private final bookController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;

.field private final cardsController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

.field private final decksController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

.field private final extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

.field private final sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private syncInit:Lcom/amazon/device/sync/SyncInit;

.field private volatile syncInitialized:Z

.field private final syncingDatasets:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncingDatasets:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncInitialized:Z

    .line 48
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getExtensionManager()Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    .line 53
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->createServices()V

    .line 55
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;

    invoke-direct {v2, p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 87
    :cond_1
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->bookController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;

    .line 88
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->decksController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

    .line 89
    new-instance v0, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->cardsController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/device/sync/SyncInit;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncInit:Lcom/amazon/device/sync/SyncInit;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/device/sync/SyncInit;)Lcom/amazon/device/sync/SyncInit;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncInit:Lcom/amazon/device/sync/SyncInit;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncInitialized:Z

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncingDatasets:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->bookController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncBookController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->decksController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncDeckController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->cardsController:Lcom/amazon/kedu/flashcards/whispersync/WhispersyncCardController;

    return-object p0
.end method

.method private createServices()V
    .locals 1

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$SingletonHolder;->INSTANCE:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    return-object v0
.end method

.method private uuidToBytes(Ljava/util/UUID;)[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 311
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteCard(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$12;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$9;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadForBook(Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$4;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCardsDataStore()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/device/sync/SyncableDataStore;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDecksDataStore()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/device/sync/SyncableDataStore;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$2;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$2;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDecksForBookAsync(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$6;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncBookLoadHandler;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFlashcardsForDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$7;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckLoadHandler;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSyncingDatasetFuture(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncingDatasets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public putSyncingDatasetFuture(Ljava/lang/String;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->syncingDatasets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveCardsAsync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$11;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveDeckAsync(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V
    .locals 9

    .line 241
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v8, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$8;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$WhisperSyncDeckSaveHandler;Ljava/lang/Runnable;)V

    invoke-direct {v1, v8}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadForBook(Ljava/lang/String;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->whispersyncExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$5;-><init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uuidBase64Encoded()Ljava/lang/String;
    .locals 2

    .line 319
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
