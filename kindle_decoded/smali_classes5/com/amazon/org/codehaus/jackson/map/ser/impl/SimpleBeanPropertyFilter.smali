.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.super Ljava/lang/Object;
.source "SimpleBeanPropertyFilter.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterOutAllExcept(Ljava/util/Set;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs filterOutAllExcept([Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 36
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 37
    new-instance p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public static serializeAllExcept(Ljava/util/Set;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs serializeAllExcept([Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
    .locals 2

    .line 45
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 46
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 47
    new-instance p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V

    return-object p0
.end method
