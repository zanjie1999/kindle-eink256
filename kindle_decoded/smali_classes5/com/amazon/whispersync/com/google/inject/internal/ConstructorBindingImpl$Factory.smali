.class Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;
.super Ljava/lang/Object;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private allowCircularProxy:Z

.field private constructorInjector:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final failIfNotLinked:Z

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->failIfNotLinked:Z

    .line 240
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;Z)Z
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->allowCircularProxy:Z

    return p1
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Constructor not ready"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 248
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->failIfNotLinked:Z

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->jitDisabled(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 254
    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p3

    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl$Factory;->allowCircularProxy:Z

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->construct(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
