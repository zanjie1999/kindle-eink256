.class final Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;
.super Ljava/lang/Object;
.source "EncounterImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

.field private injectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

.field private membersInjectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/Lookups;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 50
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    return-void
.end method


# virtual methods
.method public addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "An exception was caught and reported. Message: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void
.end method

.method getInjectionListeners()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 2
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

    .line 134
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Lookups;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 0
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

    .line 139
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method getMembersInjectors()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 2
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

    .line 125
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Lookups;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 0
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

    .line 130
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    return-void
.end method

.method public register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "-TT;>;)V"
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public register(Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener<",
            "-TT;>;)V"
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
