.class public Lcom/amazon/kcp/reader/BookLockManager;
.super Ljava/lang/Object;
.source "BookLockManager.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IBookLockManager;


# instance fields
.field private final lockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookLockManager;->lockMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookLockManager;->lockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookLockManager;->lockMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unLock()V
    .locals 0

    return-void
.end method
