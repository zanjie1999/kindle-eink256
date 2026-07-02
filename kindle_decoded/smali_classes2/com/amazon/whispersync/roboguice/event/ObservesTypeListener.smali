.class public Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;
.super Ljava/lang/Object;
.source "ObservesTypeListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener$ContextObserverMethodInjector;
    }
.end annotation


# instance fields
.field protected eventManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Lcom/amazon/whispersync/roboguice/event/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field protected observerThreadingDecorator:Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Lcom/amazon/whispersync/roboguice/event/EventManager;",
            ">;",
            "Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    return-void
.end method


# virtual methods
.method protected checkMethodParameters(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Annotation @Observes must only annotate one parameter, which must be the only parameter in the listener method."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected findContextObserver(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 47
    aget-object v3, v0, v2

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 49
    aget-object v4, v4, v2

    .line 51
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 52
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/amazon/whispersync/roboguice/event/Observes;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    check-cast v7, Lcom/amazon/whispersync/roboguice/event/Observes;

    invoke-interface {v7}, Lcom/amazon/whispersync/roboguice/event/Observes;->value()Lcom/amazon/whispersync/roboguice/event/EventThread;

    move-result-object v7

    invoke-virtual {p0, p2, p1, v4, v7}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->registerContextObserver(Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lcom/amazon/whispersync/roboguice/event/EventThread;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TI;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 34
    invoke-virtual {p0, v4, p2}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 37
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 38
    invoke-virtual {p0, v7, p2}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected registerContextObserver(Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lcom/amazon/whispersync/roboguice/event/EventThread;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
            "TI;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/whispersync/roboguice/event/EventThread;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->checkMethodParameters(Ljava/lang/reflect/Method;)V

    .line 68
    new-instance v6, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener$ContextObserverMethodInjector;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/roboguice/event/ObservesTypeListener$ContextObserverMethodInjector;-><init>(Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;Ljava/lang/reflect/Method;Ljava/lang/Class;Lcom/amazon/whispersync/roboguice/event/EventThread;)V

    invoke-interface {p1, v6}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;)V

    return-void
.end method
