.class public final Lcom/amazon/whispersync/com/google/inject/Guice;
.super Ljava/lang/Object;
.source "Guice.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInjector(Lcom/amazon/whispersync/com/google/inject/Stage;Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Stage;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Injector;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stage(Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->addModules(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->build()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createInjector(Lcom/amazon/whispersync/com/google/inject/Stage;[Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Guice;->createInjector(Lcom/amazon/whispersync/com/google/inject/Stage;Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static createInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1
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

    .line 72
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->DEVELOPMENT:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-static {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Guice;->createInjector(Lcom/amazon/whispersync/com/google/inject/Stage;Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 0

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/Guice;->createInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p0

    return-object p0
.end method
