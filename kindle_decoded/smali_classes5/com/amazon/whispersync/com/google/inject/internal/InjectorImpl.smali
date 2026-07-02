.class final Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Injector;
.implements Lcom/amazon/whispersync/com/google/inject/internal/Lookups;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;
    }
.end annotation


# static fields
.field public static final STRING_TYPE:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bindingsMultimap:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;

.field final constructors:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

.field final jitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

.field membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

.field final options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

.field final parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field final state:Lcom/amazon/whispersync/com/google/inject/internal/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/State;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;)V
    .locals 2
    .param p1    # Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;

    .line 107
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    .line 109
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    .line 936
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->constructors:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    .line 112
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 113
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    .line 114
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    goto :goto_0

    .line 119
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    :goto_0
    return-void
.end method

.method private cleanup(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/Key;",
            ">;)Z"
        }
    .end annotation

    .line 543
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getInternalDependencies(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Ljava/util/Set;

    move-result-object p1

    .line 544
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 545
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    .line 546
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v1

    .line 547
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    if-eqz v3, :cond_2

    .line 550
    invoke-direct {p0, v3, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->cleanup(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    move-result v5

    .line 551
    instance-of v6, v3, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    if-eqz v6, :cond_1

    .line 552
    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    .line 553
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getInternalConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v1

    .line 554
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_0

    .line 559
    invoke-direct {p0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_3
    return v0
.end method

.method private convertConstantStringBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Key;->ofType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_4

    .line 392
    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 396
    :cond_0
    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 397
    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v8

    .line 400
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v9

    .line 401
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1, v7, v9, p2, v8}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getConverter(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    move-result-object v10

    if-nez v10, :cond_1

    return-object v0

    .line 411
    :cond_1
    :try_start_0
    invoke-virtual {v10}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getTypeConverter()Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;->convert(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 418
    invoke-virtual {v9}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Binding;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V

    return-object v0

    :cond_2
    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    .line 419
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 414
    :cond_3
    invoke-virtual {p2, v7, v8, v9, v10}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    .line 428
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 426
    throw v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private createImplementedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ImplementedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Lcom/amazon/whispersync/com/google/inject/ImplementedBy;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 714
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 715
    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/ImplementedBy;->value()Ljava/lang/Class;

    move-result-object p3

    if-eq p3, v4, :cond_1

    .line 723
    invoke-virtual {v4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v7

    .line 732
    sget-object p3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v7, p4, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p3

    .line 734
    new-instance p4, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;

    invoke-direct {p4, p0, p3, v7}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/Key;)V

    .line 743
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    invoke-static {p1, p0, p4, v4, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v5

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-object p3

    .line 724
    :cond_0
    invoke-virtual {p4, p3, v4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 719
    :cond_1
    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->recursiveImplementationType()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method private createJustInTimeBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;ZLcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Z",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 793
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->isBlacklisted(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 801
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createProviderBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 810
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createMembersInjectorBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 819
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->convertConstantStringBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 824
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    sget-object p3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    if-ne p4, p3, :cond_3

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->jitDisabled(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 831
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 833
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->hasAttributes()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 835
    :try_start_0
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    .line 836
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p4

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p4, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 841
    :catch_0
    :cond_5
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingImplementation(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 844
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 845
    sget-object v3, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createUninitializedBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 846
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->initializeJitBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-object p1

    .line 796
    :cond_7
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;

    move-result-object p3

    .line 797
    invoke-virtual {p2, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method private createJustInTimeBindingRecursive(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;ZLcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Z",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    if-eqz v0, :cond_1

    .line 761
    :try_start_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    goto :goto_0

    :cond_0
    move-object v2, p4

    :goto_0
    invoke-direct {v0, p1, v1, p3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;ZLcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->isBlacklisted(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createJustInTimeBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;ZLcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 773
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/internal/State;->parent()Lcom/amazon/whispersync/com/google/inject/internal/State;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/State;->blacklist(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    .line 774
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 768
    :cond_2
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;

    move-result-object p3

    .line 769
    invoke-virtual {p2, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method private createMembersInjectorBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 293
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v1, v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object v8

    .line 302
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;

    invoke-static {v8}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p2

    invoke-direct {v6, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;)V

    .line 306
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p2

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectRawMembersInjector()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method private createProviderBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 316
    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 317
    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v0, p2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p2

    .line 318
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Binding;)V

    return-object v0
.end method

.method private createTypeLiteralBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 638
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 639
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 643
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 644
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 648
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 655
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v6

    .line 656
    new-instance v4, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;

    invoke-static {v6}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;)V

    .line 658
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v5

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p2

    .line 640
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectRawTypeLiteral()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method private getInternalDependencies(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 584
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 585
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->getInternalDependencies()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 586
    :cond_0
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    if-eqz v0, :cond_1

    .line 587
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 589
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method private getJustInTimeBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_5

    .line 240
    :try_start_0
    iget-object v3, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    if-eqz v3, :cond_4

    .line 245
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    if-ne p3, v2, :cond_3

    if-nez v0, :cond_3

    instance-of p3, v3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    if-eqz p3, :cond_2

    goto :goto_3

    .line 249
    :cond_2
    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->jitDisabled(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 251
    :cond_3
    :goto_3
    monitor-exit v1

    return-object v3

    .line 238
    :cond_4
    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    goto :goto_2

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;ZLcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 257
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getProvidedKey(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 273
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotInjectRawProvider()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p0

    throw p0
.end method

.method private static isMembersInjector(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isTypeLiteral(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeFailedJitBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->remove(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Z

    if-eqz p2, :cond_0

    .line 577
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->constructors:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->remove(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method callInContext(Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1021
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1022
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;

    invoke-direct {v2}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;-><init>()V

    aput-object v2, v0, v1

    const/4 v2, 0x0

    .line 1024
    :try_start_0
    aget-object v3, v0, v1

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;

    invoke-interface {p1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;->call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    aput-object v2, v0, v1

    return-object p1

    :catchall_0
    move-exception p1

    aput-object v2, v0, v1

    throw p1

    .line 1031
    :cond_0
    aget-object v0, v0, v1

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;->call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;
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

    .line 217
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->parentInjector(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->addModules(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->build()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public varargs createChildInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method createParameterInjector(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 925
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v0, p2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p2

    .line 926
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;)V

    return-object v0
.end method

.method createProvidedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ProvidedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Lcom/amazon/whispersync/com/google/inject/ProvidedBy;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 665
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 666
    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/ProvidedBy;->value()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v0, :cond_0

    .line 675
    invoke-static {v6}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v7

    .line 677
    sget-object p3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v7, p4, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v4

    .line 680
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;

    move-object v1, p3

    move-object v2, p0

    move-object v3, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 701
    new-instance p4, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;

    invoke-static {p1, p0, p3, v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v5

    move-object v1, p4

    move-object v3, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-object p4

    .line 670
    :cond_0
    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->recursiveProviderType()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method createUninitializedBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Z)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_4

    .line 607
    const-class v1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    if-ne v0, v1, :cond_0

    .line 609
    invoke-direct {p0, p1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createTypeLiteralBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 615
    :cond_0
    const-class v1, Lcom/amazon/whispersync/com/google/inject/ImplementedBy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/ImplementedBy;

    if-eqz v1, :cond_1

    .line 617
    invoke-static {v0, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 618
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createImplementedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ImplementedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    .line 622
    :cond_1
    const-class v1, Lcom/amazon/whispersync/com/google/inject/ProvidedBy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/ProvidedBy;

    if-eqz v1, :cond_2

    .line 624
    invoke-static {v0, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 625
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createProvidedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ProvidedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    if-eqz p5, :cond_3

    .line 629
    iget-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean p5, p5, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz p5, :cond_3

    const/4 p5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->create(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    move-result-object p1

    return-object p1

    .line 603
    :cond_4
    invoke-virtual {p4, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingImplementation(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public findBindingsByType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->getAll(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 862
    :try_start_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    invoke-direct {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 866
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 209
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 146
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 147
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method

.method getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 205
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getJustInTimeBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 164
    :try_start_0
    iget-object v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    if-eqz v2, :cond_1

    .line 166
    monitor-exit v0

    return-object v2

    .line 162
    :cond_1
    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    goto :goto_0

    .line 169
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->isProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :try_start_1
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1
    :try_end_1
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 182
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 169
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getInstance(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1009
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1013
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getInternalFactory(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 853
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p1

    return-object p1
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

    .line 948
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 952
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
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

    .line 957
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method getParametersInjectors(Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")[",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 904
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 908
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 909
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    const/4 v2, 0x0

    .line 911
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    add-int/lit8 v4, v2, 0x1

    .line 913
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createParameterInjector(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v2, v4

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    return-object v1
.end method

.method public getParent()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->parent:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

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

    .line 998
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 1000
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProviderOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    const/4 v1, 0x0

    .line 1001
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1004
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
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

    .line 961
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method getProviderOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 967
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p2

    .line 968
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object p1

    .line 970
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;)V

    return-object v0
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method index()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/Binding;

    .line 130
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->index(Lcom/amazon/whispersync/com/google/inject/Binding;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method index(Lcom/amazon/whispersync/com/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Binding;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->put(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Binding;)V

    return-void
.end method

.method initializeBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 506
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 507
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    invoke-virtual {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->initialize(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    :cond_0
    return-void
.end method

.method initializeJitBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 515
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    .line 521
    :try_start_0
    invoke-virtual {v1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->initialize(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 v1, 0x0

    .line 528
    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    .line 529
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->cleanup(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 943
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object v0

    .line 944
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1036
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "bindings"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
