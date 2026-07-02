.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.super Ljava/lang/Object;
.source "Scoping.java"


# static fields
.field public static final EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

.field public static final SINGLETON_ANNOTATION:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

.field public static final SINGLETON_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

.field public static final UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    .line 60
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    .line 78
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$3;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$3;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    .line 96
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$4;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$4;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;-><init>()V

    return-void
.end method

.method public static forAnnotation(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;"
        }
    .end annotation

    .line 115
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Singleton;

    if-eq p0, v0, :cond_1

    const-class v0, Lcom/amazon/whispersync/javax/inject/Singleton;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 117
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-object p0
.end method

.method public static forInstance(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
    .locals 1

    .line 140
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    if-ne p0, v0, :cond_0

    .line 141
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-object p0

    .line 144
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;-><init>(Lcom/amazon/whispersync/com/google/inject/Scope;)V

    return-object v0
.end method

.method static makeInjectable(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 257
    :cond_0
    iget-object p0, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getScope(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forInstance(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p0

    return-object p0

    .line 262
    :cond_1
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->scopeNotFound(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 263
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-object p0
.end method

.method static scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Scoping;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation

    .line 234
    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->isNoScope()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 238
    :cond_0
    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p4

    .line 240
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;)V

    invoke-interface {p4, p0, v0}, Lcom/amazon/whispersync/com/google/inject/Scope;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p0

    .line 242
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p0

    invoke-direct {p1, p0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public abstract acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 210
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    .line 212
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getScopeAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeAnnotation()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEagerSingleton(Lcom/amazon/whispersync/com/google/inject/Stage;)Z
    .locals 3

    .line 183
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 187
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->PRODUCTION:Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 188
    sget-object p1, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_ANNOTATION:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->SINGLETON_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public isExplicitlyScoped()Z
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoScope()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->NO_SCOPE:Lcom/amazon/whispersync/com/google/inject/Scope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
