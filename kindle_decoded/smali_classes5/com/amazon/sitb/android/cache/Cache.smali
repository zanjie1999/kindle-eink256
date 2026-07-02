.class public Lcom/amazon/sitb/android/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private formatter:Lcom/amazon/sitb/android/cache/CacheObjectFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
            "TV;>;"
        }
    .end annotation
.end field

.field private keyPrefix:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/sitb/android/cache/CacheListener<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private parser:Lcom/amazon/sitb/android/cache/CacheObjectParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
            "TV;>;"
        }
    .end annotation
.end field

.field private storage:Lcom/amazon/sitb/android/IPersistentStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/cache/Cache;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/IPersistentStorage;",
            "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
            "TV;>;",
            "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
            "TV;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/sitb/android/cache/Cache;->storage:Lcom/amazon/sitb/android/IPersistentStorage;

    .line 33
    iput-object p3, p0, Lcom/amazon/sitb/android/cache/Cache;->parser:Lcom/amazon/sitb/android/cache/CacheObjectParser;

    .line 34
    iput-object p4, p0, Lcom/amazon/sitb/android/cache/Cache;->formatter:Lcom/amazon/sitb/android/cache/CacheObjectFormatter;

    return-void
.end method

.method private fireCacheCleared()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/amazon/sitb/android/cache/Cache;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Firing %scache cleared event (%d listeners)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/cache/CacheListener;

    .line 129
    invoke-interface {v1}, Lcom/amazon/sitb/android/cache/CacheListener;->onCacheCleared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCachedObjectRemoved(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/amazon/sitb/android/cache/Cache;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Firing %scached object removed event (%d listeners) for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/cache/CacheListener;

    .line 117
    invoke-interface {v1, p1, p2}, Lcom/amazon/sitb/android/cache/CacheListener;->onCachedObjectRemoved(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCachedObjectUpdated(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/amazon/sitb/android/cache/Cache;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const-string v2, "Firing %scached object updated event (%d listeners) from %s to %s"

    .line 98
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/sitb/android/cache/CacheListener;

    .line 105
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/sitb/android/cache/CacheListener;->onCachedObjectUpdated(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->storage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/IPersistentStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->parser:Lcom/amazon/sitb/android/cache/CacheObjectParser;

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/cache/CacheObjectParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addListener(Lcom/amazon/sitb/android/cache/CacheListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/CacheListener<",
            "TV;>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->storage:Lcom/amazon/sitb/android/IPersistentStorage;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IPersistentStorage;->clear()V

    .line 71
    invoke-direct {p0}, Lcom/amazon/sitb/android/cache/Cache;->fireCacheCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/cache/Cache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/cache/Cache;->formatter:Lcom/amazon/sitb/android/cache/CacheObjectFormatter;

    invoke-interface {v0, p2}, Lcom/amazon/sitb/android/cache/CacheObjectFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/Cache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 50
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/cache/Cache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/amazon/sitb/android/cache/Cache;->storage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazon/sitb/android/IPersistentStorage;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/sitb/android/cache/Cache;->fireCachedObjectUpdated(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/cache/Cache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/amazon/sitb/android/cache/Cache;->storage:Lcom/amazon/sitb/android/IPersistentStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/sitb/android/cache/Cache;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/IPersistentStorage;->remove(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/cache/Cache;->fireCachedObjectRemoved(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
