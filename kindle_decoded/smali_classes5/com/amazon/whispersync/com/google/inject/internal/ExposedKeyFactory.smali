.class final Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;
.super Ljava/lang/Object;
.source "ExposedKeyFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
.implements Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final privateElements:Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 34
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->privateElements:Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 1
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

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->delegate:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public notify(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->privateElements:Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getInjector()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 39
    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->exposedButNotBound(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;->delegate:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method
