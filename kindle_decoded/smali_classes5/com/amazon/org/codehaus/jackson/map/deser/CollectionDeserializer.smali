.class public Lcom/amazon/org/codehaus/jackson/map/deser/CollectionDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;
.source "CollectionDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/CollectionDeserializer;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/CollectionDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Ljava/lang/reflect/Constructor;)V

    return-void
.end method
