.class interface abstract Lcom/amazon/whispersync/com/google/inject/internal/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final NONE:Lcom/amazon/whispersync/com/google/inject/internal/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/State$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/State;->NONE:Lcom/amazon/whispersync/com/google/inject/internal/State;

    return-void
.end method


# virtual methods
.method public abstract addConverter(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V
.end method

.method public abstract addTypeListener(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)V
.end method

.method public abstract blacklist(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getConverter(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;"
        }
    .end annotation
.end method

.method public abstract getConvertersThisLevel()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExplicitBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
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
.end method

.method public abstract getExplicitBindingsThisLevel()Ljava/util/Map;
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
.end method

.method public abstract getScope(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Scope;"
        }
    .end annotation
.end method

.method public abstract getScopes()Ljava/util/Map;
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
.end method

.method public abstract getSourcesForBlacklistedKey(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeListenerBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBlacklisted(Lcom/amazon/whispersync/com/google/inject/Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract lock()Ljava/lang/Object;
.end method

.method public abstract parent()Lcom/amazon/whispersync/com/google/inject/internal/State;
.end method

.method public abstract putAnnotation(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")V"
        }
    .end annotation
.end method

.method public abstract putBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation
.end method
