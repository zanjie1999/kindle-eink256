.class final Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;
.super Ljava/lang/Object;
.source "SingleFieldInjector.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;


# instance fields
.field final dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field final factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "*>;"
        }
    .end annotation
.end field

.field final field:Ljava/lang/reflect/Field;

.field final injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 36
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    .line 37
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 40
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p2

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    return-void
.end method


# virtual methods
.method public getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    new-instance p3, Ljava/lang/AssertionError;

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    :catch_1
    move-exception p3

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 60
    :goto_2
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    throw p1
.end method
