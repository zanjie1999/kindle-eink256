.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public forClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public abstract forCreation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract forDeserialization(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract forDirectClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public forDirectClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p1

    return-object p1
.end method

.method public abstract forSerialization(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")TT;"
        }
    .end annotation
.end method
