.class public Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
.super Ljava/lang/Object;
.source "ContextScopedRoboInjector.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/inject/RoboInjector;


# instance fields
.field protected context:Landroid/content/Context;

.field protected delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

.field protected scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

.field protected viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/com/google/inject/Injector;Lcom/amazon/whispersync/roboguice/inject/ViewListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->viewListener:Lcom/amazon/whispersync/roboguice/inject/ViewListener;

    .line 27
    const-class p1, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Injector;"
        }
    .end annotation

    .line 32
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public varargs createChildInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 3

    .line 44
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->createChildInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public findBindingsByType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 56
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->findBindingsByType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getAllBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 80
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 92
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 99
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 104
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 116
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 123
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getInstance(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 128
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 135
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 140
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 164
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 171
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 152
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 159
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getParent()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 4

    .line 176
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getParent()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 188
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 200
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 207
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 212
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getScopeBindings()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 219
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 224
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getTypeConverterBindings()Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 231
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    return-void
.end method

.method public injectMembersWithoutViews(Ljava/lang/Object;)V
    .locals 3

    .line 240
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->delegate:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 247
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public injectViewMembers(Landroid/app/Activity;)V
    .locals 3

    .line 252
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    if-ne v1, p1, :cond_0

    .line 258
    invoke-static {p1}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->injectViews(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 262
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 256
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "internal error, how did you get here?"

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 260
    :try_start_4
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 262
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public injectViewMembers(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 3

    .line 267
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :try_start_1
    invoke-static {p1}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->injectViews(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 272
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
