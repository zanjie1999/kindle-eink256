.class public abstract Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# instance fields
.field binder:Lcom/amazon/whispersync/com/google/inject/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V

    return-void
.end method

.method protected varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected addError(Ljava/lang/Throwable;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    return-void
.end method

.method protected bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    return-void
.end method

.method protected binder()Lcom/amazon/whispersync/com/google/inject/Binder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    return-object v0
.end method

.method protected abstract configure()V
.end method

.method public final declared-synchronized configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Re-entry is not allowed."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "builder"

    .line 57
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Binder;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->configure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_3
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method protected currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;

    move-result-object v0

    return-object v0
.end method

.method protected getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 1
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

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method protected getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 1
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

    .line 233
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method protected getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
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

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
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

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected install(Lcom/amazon/whispersync/com/google/inject/Module;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    return-void
.end method

.method protected requestInjection(Ljava/lang/Object;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestInjection(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestStaticInjection([Ljava/lang/Class;)V

    return-void
.end method

.method protected requireBinding(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method

.method protected requireBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method
