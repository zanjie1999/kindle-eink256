.class public final Lcom/audible/relationship/controller/AsinPairBatchController;
.super Ljava/lang/Object;
.source "AsinPairBatchController.java"

# interfaces
.implements Lcom/audible/relationship/controller/IAsinPairBatchController;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final asinPairBatchStorage:Lcom/audible/relationship/controller/IAsinPairBatchStorage;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isBatchingScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

.field private final todoBatchingRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/AsinPairBatchController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/AsinPairBatchController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)V
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/relationship/controller/AsinPairBatchController;-><init>(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->isBatchingScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/audible/relationship/controller/AsinPairBatchController$1;

    invoke-direct {v0, p0}, Lcom/audible/relationship/controller/AsinPairBatchController$1;-><init>(Lcom/audible/relationship/controller/AsinPairBatchController;)V

    iput-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->todoBatchingRunnable:Ljava/lang/Runnable;

    const-string v0, "asinPairBatchStorage can\'t be null."

    .line 90
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    iput-object p1, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->asinPairBatchStorage:Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    const-string p1, "relationshipManager can\'t be null."

    .line 91
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    iput-object p2, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    const-string p1, "executor can\'t be null."

    .line 92
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/relationship/controller/AsinPairBatchController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/audible/relationship/controller/AsinPairBatchController;->process()V

    return-void
.end method

.method private process()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->isBatchingScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->asinPairBatchStorage:Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IAsinPairBatchStorage;->getAsinPairs()Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    .line 125
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/audible/relationship/controller/AsinPairBatchController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Requesting mapping update for [%s]"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->relationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {v1, v0}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->requestAsinPairRelationship(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 5

    .line 104
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object p1, Lcom/audible/relationship/controller/AsinPairBatchController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t add blank asinPair"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/audible/relationship/controller/AsinPairBatchController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Batching %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->asinPairBatchStorage:Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/controller/IAsinPairBatchStorage;->addAsinPair(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->isBatchingScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    sget-object p1, Lcom/audible/relationship/controller/AsinPairBatchController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "Schedule batch processing with delay %s %s"

    invoke-interface {p1, v4, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->isBatchingScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object p1, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/audible/relationship/controller/AsinPairBatchController;->todoBatchingRunnable:Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method
