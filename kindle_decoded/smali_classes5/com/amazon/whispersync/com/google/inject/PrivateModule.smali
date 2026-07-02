.class public abstract Lcom/amazon/whispersync/com/google/inject/PrivateModule;
.super Ljava/lang/Object;
.source "PrivateModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# instance fields
.field private binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V

    return-void
.end method

.method protected final varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final addError(Ljava/lang/Throwable;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
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

    .line 159
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
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

    .line 166
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
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

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

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

    .line 291
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    return-void
.end method

.method protected final bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
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

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    return-void
.end method

.method protected final binder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    return-object v0
.end method

.method protected abstract configure()V
.end method

.method public final declared-synchronized configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 4

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Re-entry is not allowed."

    invoke-static {v0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Class;

    .line 95
    const-class v1, Lcom/amazon/whispersync/com/google/inject/PrivateModule;

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->configure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 99
    :try_start_3
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
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

    .line 262
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method protected final currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;

    move-result-object v0

    return-object v0
.end method

.method protected final expose(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final expose(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final expose(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-void
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

    .line 283
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

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

    .line 276
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method protected final getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
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

    .line 247
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected final getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
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

    .line 254
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected final install(Lcom/amazon/whispersync/com/google/inject/Module;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    return-void
.end method

.method protected final requestInjection(Ljava/lang/Object;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestInjection(Ljava/lang/Object;)V

    return-void
.end method

.method protected final varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestStaticInjection([Ljava/lang/Class;)V

    return-void
.end method

.method protected final requireBinding(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method

.method protected final requireBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/PrivateModule;->binder:Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method
