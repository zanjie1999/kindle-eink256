.class public final Lcom/audible/mobile/notification/NotificationFactoryProvider;
.super Ljava/lang/Object;
.source "NotificationFactoryProvider.java"


# static fields
.field private static final provider:Lcom/audible/mobile/notification/NotificationFactoryProvider;


# instance fields
.field private final classToFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/audible/mobile/notification/NotificationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private defaultFactory:Lcom/audible/mobile/notification/NotificationFactory;

.field private final idToFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/audible/mobile/notification/NotificationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-direct {v0}, Lcom/audible/mobile/notification/NotificationFactoryProvider;-><init>()V

    sput-object v0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->provider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/notification/NotificationFactoryProvider;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->logger:Lorg/slf4j/Logger;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->idToFactory:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    return-void
.end method

.method public static getProvider()Lcom/audible/mobile/notification/NotificationFactoryProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-object v0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->provider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)V
    .locals 5

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Adding factory {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory already present for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-interface {p2}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->idToFactory:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->idToFactory:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already assigned to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->idToFactory:Ljava/util/Map;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->idToFactory:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/notification/NotificationFactory;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->defaultFactory:Lcom/audible/mobile/notification/NotificationFactory;

    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No factory found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized offerFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)Z
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Offering factory {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->classToFactory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p2, p0, Lcom/audible/mobile/notification/NotificationFactoryProvider;->logger:Lorg/slf4j/Logger;

    const-string v0, "Already contained factory for class {}, skipping"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 125
    monitor-exit p0

    return p1

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->addFactory(Ljava/lang/Class;Lcom/audible/mobile/notification/NotificationFactory;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 129
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
