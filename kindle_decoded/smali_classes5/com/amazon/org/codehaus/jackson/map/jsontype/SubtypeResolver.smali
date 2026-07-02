.class public abstract Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;
.super Ljava/lang/Object;
.source "SubtypeResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract registerSubtypes([Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;)V
.end method

.method public varargs abstract registerSubtypes([Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
