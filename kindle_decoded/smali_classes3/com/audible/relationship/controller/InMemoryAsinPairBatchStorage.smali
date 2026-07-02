.class public final Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;
.super Ljava/lang/Object;
.source "InMemoryAsinPairBatchStorage.java"

# interfaces
.implements Lcom/audible/relationship/controller/IAsinPairBatchStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final asinPairBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->asinPairBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public addAsinPair(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object p1, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t add blank ASIN pair"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->asinPairBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    sget-object v0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Error while putting ASIN pair into BlockingQueue"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getAsinPairs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->asinPairBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->asinPairBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 73
    sget-object v1, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Draining %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/audible/relationship/controller/InMemoryAsinPairBatchStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "The queue is empty. Returning empty List"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
