.class final Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injectionListeners:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final userMembersInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 44
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 45
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    .line 46
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->getMembersInjectors()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    .line 47
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/internal/EncounterImpl;->getInjectionListeners()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method


# virtual methods
.method public getInjectionPoints()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;

    .line 135
    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getMemberInjectors()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-object v0
.end method

.method injectAndNotify(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->callInContext(Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;)Ljava/lang/Object;

    if-nez p3, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    :cond_1
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 65
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwProvisionExceptionIfErrorsExist()V

    return-void
.end method

.method injectMembers(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Z)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 108
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;

    if-eqz p4, :cond_0

    .line 109
    invoke-interface {v3}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->isToolable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    :cond_0
    invoke-interface {v3, p2, p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;->inject(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 117
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_3

    .line 118
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    .line 120
    :try_start_0
    invoke-interface {p4, p1}, Lcom/amazon/whispersync/com/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 122
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {p2, p4, v2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserInjector(Lcom/amazon/whispersync/com/google/inject/MembersInjector;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method notifyListeners(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;

    .line 97
    :try_start_0
    invoke-interface {v2, p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;->afterInjection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 99
    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {p2, v2, v4, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorNotifyingInjectionListener(Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
