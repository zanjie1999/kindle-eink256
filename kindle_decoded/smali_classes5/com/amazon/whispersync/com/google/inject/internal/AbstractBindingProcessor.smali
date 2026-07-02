.class abstract Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "AbstractBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;
    }
.end annotation


# static fields
.field private static final FORBIDDEN_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 44
    const-class v2, Lcom/amazon/whispersync/com/google/inject/AbstractModule;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Binder;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Binding;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Injector;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Key;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Module;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/amazon/whispersync/com/google/inject/Scope;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 61
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->validateKey(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-void
.end method

.method private isOkayDuplicate(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/State;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/State;",
            ")Z"
        }
    .end annotation

    .line 112
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ExposedBindingImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ExposedBindingImpl;

    .line 114
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ExposedBindingImpl;->getPrivateElements()Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getInjector()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 115
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 117
    :cond_1
    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    if-nez p1, :cond_2

    return v1

    .line 123
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private validateKey(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-static {p2, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method protected invalidBinding(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 73
    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotBindToGuiceType(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-direct {p0, v1, p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->isOkayDuplicate(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/State;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->bindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 88
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorCheckingDuplicateBinding(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->jitBindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->parent()Lcom/amazon/whispersync/com/google/inject/internal/State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/State;->blacklist(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->putBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method
