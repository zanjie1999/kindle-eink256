.class public Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
.super Ljava/lang/Object;
.source "SimpleMixInResolver.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _localMixIns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _overrides:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_overrides:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    return-void
.end method


# virtual methods
.method public addLocalDefinition(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_localMixIns:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_localMixIns:Ljava/util/Map;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_localMixIns:Ljava/util/Map;

    new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_overrides:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->_localMixIns:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 94
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    :cond_1
    return-object v0
.end method
