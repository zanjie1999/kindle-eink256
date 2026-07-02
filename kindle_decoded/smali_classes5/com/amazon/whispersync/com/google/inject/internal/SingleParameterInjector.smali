.class final Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;
.super Ljava/lang/Object;
.source "SingleParameterInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 32
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    return-void
.end method

.method static getAll(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "[",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 50
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 55
    array-length v1, p2

    .line 56
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 60
    aget-object v4, p2, v3

    .line 62
    :try_start_0
    invoke-direct {v4, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->inject(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 64
    invoke-virtual {v4}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    return-object v2
.end method

.method private inject(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    throw p1
.end method
