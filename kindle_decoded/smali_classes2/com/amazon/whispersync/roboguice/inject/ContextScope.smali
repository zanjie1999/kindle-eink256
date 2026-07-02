.class public Lcom/amazon/whispersync/roboguice/inject/ContextScope;
.super Ljava/lang/Object;
.source "ContextScope.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Scope;


# instance fields
.field protected application:Landroid/app/Application;

.field protected applicationScopedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected contextThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->contextThreadLocal:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->applicationScopedObjects:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->application:Landroid/app/Application;

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public enter(Landroid/content/Context;)V
    .locals 4

    .line 76
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->getContextStack()Ljava/util/Stack;

    move-result-object v1

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->getScopedObjectMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 82
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 87
    :cond_0
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 89
    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public exit(Landroid/content/Context;)V
    .locals 5

    .line 95
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->getContextStack()Ljava/util/Stack;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scope for %s must be opened before it can be closed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getContextStack()Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->contextThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->contextThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method protected getScopedObjectMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    .line 138
    :goto_0
    instance-of v1, v0, Lcom/amazon/whispersync/roboguice/util/RoboContext;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/app/Application;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 139
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 143
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->applicationScopedObjects:Ljava/util/Map;

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 149
    check-cast v0, Lcom/amazon/whispersync/roboguice/util/RoboContext;

    invoke-interface {v0}, Lcom/amazon/whispersync/roboguice/util/RoboContext;->getScopedObjectMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s does not appear to be a RoboGuice context (instanceof RoboContext)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope$1;-><init>(Lcom/amazon/whispersync/roboguice/inject/ContextScope;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object v0
.end method
