.class final Lcom/amazon/whispersync/com/google/inject/internal/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;
    }
.end annotation


# instance fields
.field private final creatingThread:Ljava/lang/Thread;

.field private final pendingInjection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ready:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 44
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/lang/Thread;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/util/Map;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method injectAll(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;

    .line 92
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 94
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to satisfy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method requestInjection(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "TT;>;"
        }
    .end annotation

    .line 55
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 58
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->hasTypeListeners()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p4, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 60
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p1

    return-object p1
.end method

.method validateOustandingInjections(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;

    .line 75
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->validate(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 77
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :cond_0
    return-void
.end method
